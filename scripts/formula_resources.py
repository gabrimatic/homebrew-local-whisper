# /// script
# requires-python = ">=3.11"
# dependencies = ["packaging>=24"]
# ///
"""Keep the formula's Python resources identical to the release lock.

The formula installs the locked runtime dependency set of the tagged
local-whisper release. This script reads that lock from the release tarball the
formula points at (or from a local checkout passed with --source), evaluates it
for the formula's Python on Apple Silicon macOS, and compares it with the
formula's `resource` blocks.

    uv run scripts/formula_resources.py            # check, exit 1 on drift
    uv run scripts/formula_resources.py --write    # rewrite the resources

--write keeps resources whose version is unchanged, swaps the wheel of changed
ones, removes dropped packages and appends new ones before `def install`.
Every URL and sha256 comes from PyPI's JSON API.
"""

import argparse
import io
import json
import re
import subprocess
import sys
import tarfile
import tempfile
import urllib.request
from pathlib import Path

from packaging.requirements import Requirement
from packaging.utils import (
    canonicalize_name,
    parse_sdist_filename,
    parse_wheel_filename,
)

FORMULA = Path(__file__).resolve().parents[1] / "Formula" / "local-whisper.rb"
NON_PYTHON_RESOURCES = {"native-ui"}
MACOS_MIN = (14, 0)  # mlx publishes macOS 14+ arm64 wheels only
RESOURCE_RE = re.compile(
    r'  resource "(?P<name>[^"]+)" do\n'
    r'    url "(?P<url>[^"]+)"\n'
    r'    sha256 "(?P<sha>[0-9a-f]{64})"\n'
    r"  end\n\n?"
)


def fetch_json(url: str) -> dict:
    with urllib.request.urlopen(url, timeout=60) as response:
        return json.load(response)


def formula_facts(text: str) -> tuple[str, str]:
    url = re.search(r'^  url "([^"]+)"$', text, re.M)
    python = re.search(r'^  depends_on "python@(\d+\.\d+)"$', text, re.M)
    if not url or not python:
        raise SystemExit("formula has no top-level url or python@ dependency")
    return url.group(1), python.group(1)


def release_source(tarball_url: str, workdir: Path) -> Path:
    with urllib.request.urlopen(tarball_url, timeout=120) as response:
        data = response.read()
    with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as archive:
        wanted = {"pyproject.toml", "uv.lock", "requirements.lock"}
        members = [
            m
            for m in archive.getmembers()
            if m.isfile() and m.name.count("/") == 1 and m.name.split("/")[1] in wanted
        ]
        archive.extractall(workdir, members=members, filter="data")
    roots = {Path(m.name).parts[0] for m in members}
    if len(roots) != 1:
        raise SystemExit(f"unexpected tarball layout: {sorted(roots)}")
    return workdir / roots.pop()


def locked_pins(source: Path, python: str) -> dict[str, str]:
    if (source / "uv.lock").is_file():
        exported = subprocess.run(
            [
                "uv", "export", "--frozen", "--no-dev", "--no-hashes",
                "--no-emit-project", "--no-header", "--no-annotate",
            ],
            cwd=source, check=True, capture_output=True, text=True,
        ).stdout
    elif (source / "requirements.lock").is_file():
        exported = (source / "requirements.lock").read_text()
    else:
        raise SystemExit(f"no uv.lock or requirements.lock in {source}")

    env = {
        "sys_platform": "darwin",
        "platform_system": "Darwin",
        "platform_machine": "arm64",
        "os_name": "posix",
        "implementation_name": "cpython",
        "platform_python_implementation": "CPython",
        "python_version": python,
        "python_full_version": f"{python}.0",
        "extra": "",
    }
    pins: dict[str, str] = {}
    for line in exported.splitlines():
        line = line.strip()
        if not line or line.startswith(("#", "-")):
            continue
        requirement = Requirement(line)
        if requirement.marker is not None and not requirement.marker.evaluate(env):
            continue
        (spec,) = requirement.specifier
        if spec.operator != "==":
            raise SystemExit(f"lock entry is not pinned: {line}")
        pins[canonicalize_name(requirement.name)] = spec.version
    return pins


def file_identity(url: str) -> tuple[str, str]:
    filename = url.rsplit("/", 1)[1]
    if filename.endswith(".whl"):
        name, version, _, _ = parse_wheel_filename(filename)
    else:
        name, version = parse_sdist_filename(filename)
    return canonicalize_name(name), str(version)


def wheel_rank(filename: str, python: str) -> tuple | None:
    """Sort key for wheels usable on CPython `python`, macOS arm64; None if unusable."""
    major, minor = (int(part) for part in python.split("."))
    best = None
    for tag in parse_wheel_filename(filename)[3]:
        interpreter, abi, platform = tag.interpreter, tag.abi, tag.platform
        if interpreter == f"cp{major}{minor}" and abi in {f"cp{major}{minor}", "none"}:
            interp_rank = 0
        elif abi == "abi3" and interpreter.startswith(f"cp{major}") and int(interpreter[3:]) <= minor:
            interp_rank = 1
        elif abi == "none" and interpreter in {"py3", f"py{major}{minor}", "py2.py3"}:
            interp_rank = 2
        else:
            continue
        if platform == "any":
            macos = (0, 0)
        else:
            match = re.fullmatch(r"macosx_(\d+)_(\d+)_(arm64|universal2)", platform)
            if not match or (int(match[1]), int(match[2])) > MACOS_MIN:
                continue
            macos = (int(match[1]), int(match[2]))
        # Prefer native arm64 builds (they bundle native libraries), then
        # universal2, then pure wheels; then the most specific ABI and the
        # oldest macOS floor.
        kind = 0 if platform.endswith("arm64") else 1 if platform.endswith("universal2") else 2
        rank = (kind, interp_rank, macos)
        best = rank if best is None or rank < best else best
    return best


def pypi_file(name: str, version: str, python: str) -> tuple[str, str]:
    files = [f for f in fetch_json(f"https://pypi.org/pypi/{name}/{version}/json")["urls"] if not f.get("yanked")]
    wheels = [(wheel_rank(f["filename"], python), f) for f in files if f["filename"].endswith(".whl")]
    wheels = [(rank, f) for rank, f in wheels if rank is not None]
    if wheels:
        chosen = min(wheels, key=lambda item: item[0])[1]
    else:
        sdists = [f for f in files if f["packagetype"] == "sdist"]
        if not sdists:
            raise SystemExit(f"no usable file for {name}=={version}")
        chosen = sdists[0]
    return chosen["url"], chosen["digests"]["sha256"]


def check_pypi(url: str, sha: str, python: str) -> str | None:
    filename = url.rsplit("/", 1)[1]
    name, version = file_identity(url)
    files = fetch_json(f"https://pypi.org/pypi/{name}/{version}/json")["urls"]
    match = next((f for f in files if f["filename"] == filename), None)
    if match is None:
        return f"{filename} is not on PyPI"
    if match.get("yanked"):
        return f"{filename} is yanked"
    if match["digests"]["sha256"] != sha:
        return f"{filename} sha256 differs from PyPI"
    if filename.endswith(".whl") and wheel_rank(filename, python) is None:
        return f"{filename} does not install on CPython {python} macOS arm64"
    return None


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--write", action="store_true", help="rewrite the formula resources")
    parser.add_argument("--source", type=Path, help="local-whisper checkout to read the lock from")
    parser.add_argument("--formula", type=Path, default=FORMULA)
    args = parser.parse_args()

    text = args.formula.read_text()
    tarball_url, python = formula_facts(text)
    with tempfile.TemporaryDirectory() as tmp:
        source = args.source or release_source(tarball_url, Path(tmp))
        pins = locked_pins(source, python)

    resources = {}
    for match in RESOURCE_RE.finditer(text):
        if match["name"] in NON_PYTHON_RESOURCES:
            continue
        name, version = file_identity(match["url"])
        resources[name] = (version, match)

    missing = sorted(set(pins) - set(resources))
    extra = sorted(set(resources) - set(pins))
    changed = sorted(n for n in set(pins) & set(resources) if pins[n] != resources[n][0])

    if args.write:
        def replace(match: re.Match) -> str:
            if match["name"] in NON_PYTHON_RESOURCES:
                return match.group(0)
            name, version = file_identity(match["url"])
            if name not in pins:
                return ""
            if pins[name] == version:
                return match.group(0)
            url, sha = pypi_file(name, pins[name], python)
            return f'  resource "{match["name"]}" do\n    url "{url}"\n    sha256 "{sha}"\n  end\n\n'

        text = RESOURCE_RE.sub(replace, text)
        additions = ""
        for name in missing:
            url, sha = pypi_file(name, pins[name], python)
            additions += f'  resource "{name}" do\n    url "{url}"\n    sha256 "{sha}"\n  end\n\n'
        text = text.replace("  def install\n", additions + "  def install\n", 1)
        args.formula.write_text(text)
        print(f"updated {len(changed)}, added {len(missing)}, removed {len(extra)}")
        return 0

    problems = [f"missing from formula: {n}=={pins[n]}" for n in missing]
    problems += [f"not in lock: {n}=={resources[n][0]}" for n in extra]
    problems += [f"version drift: {n} formula {resources[n][0]}, lock {pins[n]}" for n in changed]
    for _version, match in resources.values():
        problem = check_pypi(match["url"], match["sha"], python)
        if problem:
            problems.append(problem)

    for problem in problems:
        print(problem, file=sys.stderr)
    if problems:
        return 1
    print(f"{len(resources)} Python resources match the lock for Python {python}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
