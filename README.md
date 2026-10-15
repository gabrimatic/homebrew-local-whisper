# Homebrew Tap for Local Whisper

On-device voice transcription with grammar correction for macOS. Runs locally on Apple Silicon.

## Install

```bash
brew install gabrimatic/local-whisper/local-whisper
```

## Setup

```bash
wh setup
```

`wh setup` downloads the default local model, checks Microphone and Accessibility permission, and starts the background service.

## Usage

Double-tap **Right Option** to record, tap to stop. Transcribed text goes to the clipboard.

```bash
wh                    # Status and help
wh setup             # Run first-time setup again
wh whisper "hello"    # Text-to-speech
wh listen             # Record and transcribe
wh config             # Edit settings
```

## Requirements

- macOS on Apple Silicon
- macOS 26 or later for the menu bar app; earlier macOS runs the background service headless
- ~3GB disk space (code + models)

## Maintaining the formula

The formula's Python resources must match the runtime dependency set in the
release's `uv.lock`, evaluated for the formula's Python on Apple Silicon. For a
new release, point `url` and `sha256` at the new tag tarball and drop any
`revision` line, then:

```bash
uv run scripts/formula_resources.py --write   # pin resources to the release lock
uv run scripts/formula_resources.py           # check; CI runs the same check
brew style Formula/local-whisper.rb
```

`--write` takes every URL and sha256 from PyPI. Update the `native-ui` resource
to the release's menu-app zip by hand.

## More

See the [main repository](https://github.com/gabrimatic/local-whisper) for full documentation.
