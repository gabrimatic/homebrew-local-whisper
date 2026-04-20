class LocalWhisper < Formula
  include Language::Python::Virtualenv

  desc "Local voice transcription with grammar correction for macOS"
  homepage "https://github.com/gabrimatic/local-whisper"
  url "https://github.com/gabrimatic/local-whisper/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "34380377aa69485cf1c28885e386d5df3c936a39430c84632c27341e137db477"
  license "MIT"
  head "https://github.com/gabrimatic/local-whisper.git", branch: "main"

  depends_on arch: :arm64
  depends_on "espeak-ng"
  depends_on "ffmpeg"
  depends_on :macos
  depends_on "python@3.12"

  # macOS arm64 wheels (native extensions, no sdist build possible)
  resource "espeakng-loader" do
    url "https://files.pythonhosted.org/packages/a8/26/258c0cd43b9bc1043301c5f61767d6a6c3b679df82790c9cb43a3277b865/espeakng_loader-0.2.4-py3-none-macosx_11_0_arm64.whl"
    sha256 "d27cdca31112226e7299d8562e889d3e38a1e48055c9ee381b45d669072ee59f"
  end

  resource "mlx" do
    url "https://files.pythonhosted.org/packages/38/29/71fe1f68756f515856e6930973c23245810d4aa3cd22fddd719d86a709dc/mlx-0.31.1-cp312-cp312-macosx_14_0_arm64.whl"
    sha256 "8a63b31a398c9519f2bb0c81cf3865d9baca4ff573ffc31ead465d18286184e8"
  end

  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/39/66/2313497fdbc7fbadf8e026c09366e3f049f9114e65ca4edc23cdb8699186/mlx_metal-0.31.1-py3-none-macosx_14_0_arm64.whl"
    sha256 "70741174131dbf7fdd479cb730e06e08c358eac3bf7905d9e884e7960cfdd5b8"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/d3/54/a2ba279afcca44bbd320d4e73675b282fcee3d81400ea1b53934efca6462/torch-2.10.0-2-cp312-none-macosx_11_0_arm64.whl"
    sha256 "13ec4add8c3faaed8d13e0574f5cd4a323c11655546f91fbe6afa77b57423574"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/9a/81/7e4e08678a1f98521201c3079f77db69fb552acd56067661f8c2f534a718/markupsafe-3.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "1872df69a4de6aead3491198eaf13810b565bdbeec3ae2dc8780f14458ec73ce"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "addict" do
    url "https://files.pythonhosted.org/packages/6a/00/b08f23b7d7e1e14ce01419a467b583edbb93c6cdb8654e54a9cc579cd61f/addict-2.4.0-py3-none-any.whl"
    sha256 "249bb56bbfd3cdc2a004ea0ff4c2b6ddc84d53bc2194761636eb314d5cfa5dfc"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/38/0e/27be9fdef66e72d64c0cdc3cc2823101b80585f8119b5c112c2e8f5f7dab/anyio-4.12.1-py3-none-any.whl"
    sha256 "d405828884fc140aa80a3c667b8beed277f1dfedec42ba031bd6ac3db606ab6c"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/3a/2a/7cc015f5b9f5db42b7d48157e23356022889fc354a2813c15934b7cb5c0e/attrs-25.4.0-py3-none-any.whl"
    sha256 "adcf7e2a1fb3b36ac48d97835bb6d8ade15b8dcce26aba8bf1d14847b57a3373"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/77/f5/21d2de20e8b8b0408f0681956ca2c69f1320a3848ac50e6e7f39c6159675/babel-2.18.0-py3-none-any.whl"
    sha256 "e2b422b277c2b9a9630c1d7903c2a00d0830c409c59ac8cae9081c92f1aeba35"
  end

  resource "blis" do
    url "https://files.pythonhosted.org/packages/11/69/363c8df8d98b3cc97be19aad6aabb2c9c53f372490d79316bdee92d476e7/blis-1.3.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "3f6c595185176ce021316263e1a1d636a3425b6c48366c1fd712d08d0b71849a"
  end

  resource "catalogue" do
    url "https://files.pythonhosted.org/packages/9e/96/d32b941a501ab566a16358d68b6eb4e4acc373fab3c3c4d7d9e649f7b4bb/catalogue-2.0.10-py3-none-any.whl"
    sha256 "58c2de0020aa90f4a2da7dfad161bf7b3b054c86a5f09fcedc0b2b740c109a9f"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/c5/60/3a621758945513adfd4db86827a5bafcc615f913dbd0b4c2ed64a65731be/charset_normalizer-3.4.5-py3-none-any.whl"
    sha256 "9db5e3fcdcee89a78c04dffb3fe33c79f77bd741a624946db2591c81b2fc85b0"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "cloudpathlib" do
    url "https://files.pythonhosted.org/packages/ae/8a/c4bb04426d608be4a3171efa2e233d2c59a5c8937850c10d098e126df18e/cloudpathlib-0.23.0-py3-none-any.whl"
    sha256 "8520b3b01468fee77de37ab5d50b1b524ea6b4a8731c35d1b7407ac0cd716002"
  end

  resource "confection" do
    url "https://files.pythonhosted.org/packages/0c/00/3106b1854b45bd0474ced037dfe6b73b90fe68a68968cef47c23de3d43d2/confection-0.1.5-py3-none-any.whl"
    sha256 "e29d3c3f8eac06b3f77eb9dfb4bf2fc6bcc9622a98ca00a698e3d019c6430b14"
  end

  resource "csvw" do
    url "https://files.pythonhosted.org/packages/80/cb/19e8e582fc164db200c18078bdbdcc60c012cb83c7f02ea8e876bc0b1adf/csvw-3.7.0-py2.py3-none-any.whl"
    sha256 "21b88db50a35e940d4b5cdd8f3a8084493ad7f1bb1657ed7323aad977359940e"
  end

  resource "curated-tokenizers" do
    url "https://files.pythonhosted.org/packages/34/fb/d6e57b1155bee398f43de58ecdcdda44957e9635183312ac0820a19fc94d/curated_tokenizers-0.0.9-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "2abbb571666a9c9b3a15f9df022e25ed1137e9fa8346788aaa747c00f940a3c6"
  end

  resource "curated-transformers" do
    url "https://files.pythonhosted.org/packages/d6/67/3b72b3fdfcadab61bc8f59c17e63770e526ffabd583ed32f174a7c01af85/curated_transformers-0.1.1-py2.py3-none-any.whl"
    sha256 "d716063d73d803c6925d2dab56fde9b9ab8e89e663c2c0587804944ba488ff01"
  end

  resource "cymem" do
    url "https://files.pythonhosted.org/packages/f9/71/f0f8adee945524774b16af326bd314a14a478ed369a728a22834e6785a18/cymem-2.0.13-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "c9251d889348fe79a75e9b3e4d1b5fa651fca8a64500820685d73a3acc21b6a8"
  end

  resource "dlinfo" do
    url "https://files.pythonhosted.org/packages/da/90/022c79d6e5e6f843268c10b84d4a021ee3afba0621d3c176d3ff2024bfc8/dlinfo-2.0.0-py3-none-any.whl"
    sha256 "b32cc18e3ea67c0ca9ca409e5b41eed863bd1363dbc9dd3de90fedf11b61e7bc"
  end

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/a4/a5/842ae8f0c08b61d6484b52f99a03510a3a72d23141942d216ebe81fefbce/filelock-3.25.2-py3-none-any.whl"
    sha256 "ca8afb0da15f229774c9ad1b455ed96e85a81373065fb10446672f64444ddf70"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/e6/ab/fb21f4c939bb440104cc2b396d3be1d9b7a9fd3c6c2a53d98c45b3d7c954/fsspec-2026.2.0-py3-none-any.whl"
    sha256 "98de475b5cb3bd66bedd5c4679e87b4fdfe1a3bf4d707b151b3c07e58c9a2437"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/64/2e/af4475c32b4378b0e92a587adb1aa3ec53e3450fd3e5fe0372a874531c00/hf_xet-1.4.2-cp37-abi3-macosx_11_0_arm64.whl"
    sha256 "e9b38d876e94d4bdcf650778d6ebbaa791dd28de08db9736c43faff06ede1b5a"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "huggingface_hub" do
    url "https://files.pythonhosted.org/packages/6f/75/ca21955d6117a394a482c7862ce96216239d0e3a53133ae8510727a8bcfa/huggingface_hub-1.7.1-py3-none-any.whl"
    sha256 "38c6cce7419bbde8caac26a45ed22b0cea24152a8961565d70ec21f88752bfaa"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/15/aa/0aca39a37d3c7eb941ba736ede56d689e7be91cab5d9ca846bde3999eba6/isodate-0.7.2-py3-none-any.whl"
    sha256 "28009937d8031054830160fce6d409ed342816b543597cece116d966c6d99e15"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/7b/91/984aca2ec129e2757d1e4e3c81c3fcda9d0f85b74670a094cc443d9ee949/joblib-1.5.3-py3-none-any.whl"
    sha256 "5fc3c5039fc5ca8c0276333a188bbd59d6b7ab37fe6632daa76bc7f9ec18e713"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "kokoro-mlx" do
    url "https://files.pythonhosted.org/packages/14/65/68bfaf36533808933af329e290063167409f7c280435ff620d2a62426493/kokoro_mlx-0.1.1-py3-none-any.whl"
    sha256 "60a3b431aecf705d8a0d731666ecc298ba341d64ad4cd29db5cd60fa16e3148f"
  end

  resource "language-tags" do
    url "https://files.pythonhosted.org/packages/b0/42/327554649ed2dd5ce59d3f5da176c7be20f9352c7c6c51597293660b7b08/language_tags-1.2.0-py3-none-any.whl"
    sha256 "d815604622242fdfbbfd747b40c31213617fd03734a267f2e39ee4bd73c88722"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "misaki" do
    url "https://files.pythonhosted.org/packages/82/ec/0ee4110ddb54278b8f21c40a140370ae8f687036c4edf578316602697c56/misaki-0.9.4-py3-none-any.whl"
    sha256 "90e2eeb169786c014c429e5058d2ea6bcd02d651f2a24450ba6c9ffc0f8da15a"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/16/5d/7f950d12fc2775234ca8e08617273659a9fac6f0030d28b123332303201c/mpmath-1.4.0-py3-none-any.whl"
    sha256 "1910f299a1346afcc47d17586c6b3b2a39fd5e0c0829fcecd87c57acd5007c95"
  end

  resource "murmurhash" do
    url "https://files.pythonhosted.org/packages/ed/cc/630449bf4f6178d7daf948ce46ad00b25d279065fc30abd8d706be3d87e0/murmurhash-1.0.15-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "0861cb11039409eaf46878456b7d985ef17b6b484103a6fc367b2ecec846891d"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end

  resource "num2words" do
    url "https://files.pythonhosted.org/packages/d6/5b/545e9267a1cc080c8a1be2746113a063e34bcdd0f5173fd665a5c13cb234/num2words-0.5.14-py3-none-any.whl"
    sha256 "1c8e5b00142fc2966fd8d685001e36c4a9911e070d1b120e1beb721fa1edb33d"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/c5/f3/a983d28637bfcd763a9c7aafdb6d5c0ebf3d487d1e1459ffdb57e2f01117/numpy-2.4.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "23cbfd4c17357c81021f21540da84ee282b9c8fba38a03b7b9d09ba6b951421e"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/b7/b9/c538f279a4e237a006a2c98387d081e9eb060d203d8ed34467cc0f0b9b53/packaging-26.0-py3-none-any.whl"
    sha256 "b36f1fef9334a5588b4166f8bcd26a14e521f2b55e6b9de3aaa80d3ff7a37529"
  end

  resource "phonemizer-fork" do
    url "https://files.pythonhosted.org/packages/64/f1/0dcce21b0ae16a82df4b6583f8f3ad8e55b35f7e98b6bf536a4dd225fa08/phonemizer_fork-3.3.2-py3-none-any.whl"
    sha256 "97305c76f4183b3825dae8f4c032265fe78c9946ce58c47d4b62161349264b74"
  end

  resource "preshed" do
    url "https://files.pythonhosted.org/packages/80/24/fd654a9c0f5f3ed1a9b1d8a392f063ae9ca29ad0b462f0732ae0147f7cee/preshed-3.0.12-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "ffe1fd7d92f51ed34383e20d8b734780c814ca869cfdb7e07f2d31651f90cdf4"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/5d/2d/7b7058842d5d9b7008cd1872f8ec38ac46b333170e8262ac28499675e156/pydantic_core-2.42.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "c43088e8a44ccb2a2329d83892110587ebe661090b546dd03624a933fc4cfd0d"
  end

  resource "pynput" do
    url "https://files.pythonhosted.org/packages/59/4f/ac3fa906ae8a375a536b12794128c5efacade9eaa917a35dfd27ce0c7400/pynput-1.8.1-py2.py3-none-any.whl"
    sha256 "42dfcf27404459ca16ca889c8fb8ffe42a9fe54f722fd1a3e130728e59e768d2"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/64/5a/6b15e499de73050f4a2c88fff664ae154307d25dc04da8fb38998a428358/pyobjc_core-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "818bcc6723561f207e5b5453efe9703f34bc8781d11ce9b8be286bb415eb4962"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/37/a7/55fa88def5c02732c4b747606ff1cbce6e1f890734bbd00f5596b21eaa02/pyobjc_framework_applicationservices-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "c8f6e2fb3b3e9214ab4864ef04eee18f592b46a986c86ea0113448b310520532"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/95/bf/ee4f27ec3920d5c6fc63c63e797c5b2cc4e20fe439217085d01ea5b63856/pyobjc_framework_cocoa-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "547c182837214b7ec4796dac5aee3aa25abc665757b75d7f44f83c994bcb0858"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/cd/0f/ddf45bf0e3ba4fbdc7772de4728fd97ffc34a0b5a15e1ab1115b202fe4ae/pyobjc_framework_coretext-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "d246fa654bdbf43bae3969887d58f0b336c29b795ad55a54eb76397d0e62b93c"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/e9/9b/780f057e5962f690f23fdff1083a4cfda5a96d5b4d3bb49505cac4f624f2/pyobjc_framework_quartz-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "7730cdce46c7e985535b5a42c31381af4aa6556e5642dc55b5e6597595e57a16"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/10/bd/c038d7cc38edc1aa5bf91ab8068b63d4308c66c4c8bb3cbba7dfbc049f9c/pyparsing-3.3.2-py3-none-any.whl"
    sha256 "850ba148bd908d7e2411587e247a1e4f0327839c40e2e5e6d05a007ecc69911d"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "qwen3-asr-mlx" do
    url "https://files.pythonhosted.org/packages/84/af/4c26a375e908a3ae16ef62b2e7a06db87e71b3d0ab1d4617b8ac0f562e21/qwen3_asr_mlx-0.1.0-py3-none-any.whl"
    sha256 "db8f363179b5a5fb628cadf7001fb7f7fb946c372a9c1f5bfc531bc6732d07bb"
  end

  resource "rdflib" do
    url "https://files.pythonhosted.org/packages/10/c2/6604a71269e0c1bd75656d5a001432d16f2cc5b8c057140ec797155c295e/rdflib-7.6.0-py3-none-any.whl"
    sha256 "30c0a3ebf4c0e09215f066be7246794b6492e054e782d7ac2a34c9f70a15e0dd"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/9e/06/3ef1ac6910dc3295ebd71b1f9bfa737e82cfead211a18b319d45f85ddd09/regex-2026.2.28-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "9b65d33a17101569f86d9c5966a8b1d7fbf8afdda5a8aa219301b0a80f58cf7d"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/1e/db/4254e3eabe8020b458f1a747140d32277ec7a271daf1d235b70dc0b4e6e3/requests-2.32.5-py3-none-any.whl"
    sha256 "2462f94637a34fd532264295e186976db0f5d453d1cdd31473c85a6a161affb6"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/ff/9a/9afaade874b2fa6c752c36f1548f718b5b83af81ed9b76628329dab81c1b/rfc3986-2.0.0-py2.py3-none-any.whl"
    sha256 "50b1502b60e289cb37883f3dfd34532b8873c7de9f49bb546641ce9cbd256ebd"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/14/25/b208c5683343959b670dc001595f2f3737e051da617f66c31f7c4fa93abc/rich-14.3.3-py3-none-any.whl"
    sha256 "793431c1f8619afa7d3b52b2cdec859562b950ea0d4b6b505397612db8d5362d"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/4d/a1/bca7fd3d452b272e13335db8d6b0b3ecde0f90ad6f16f3328c6fb150c889/rpds_py-0.30.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "6abc8880d9d036ecaafe709079969f56e876fcf107f7a8e9920ba6d5a3878d05"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/e8/00/374c0c068e30cd31f1e1b46b4b5738168ec79e7689ca82ee93ddfea05109/safetensors-0.7.0-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "94fd4858284736bb67a897a41608b5b0c2496c9bdb3bf2af1fa3409127f20d57"
  end

  resource "segments" do
    url "https://files.pythonhosted.org/packages/be/60/eef9acce946177f92c9aabf432224d87ab908bafafac516a36ab924199f3/segments-2.4.0-py2.py3-none-any.whl"
    sha256 "4021dc67f201cc03c864c74c618bdb163b1af629da3040babbaa37d8813f3db0"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/9d/76/f789f7a86709c6b087c5a2f52f911838cad707cc613162401badc665acfe/setuptools-82.0.1-py3-none-any.whl"
    sha256 "a59e362652f08dcd477c78bb6e7bd9d80a7995bc73ce773050228a348ce2e5bb"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl"
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "smart_open" do
    url "https://files.pythonhosted.org/packages/5e/ea/dcdecd68acebb49d3fd560473a43499b1635076f7f1ae8641c060fe7ce74/smart_open-7.5.1-py3-none-any.whl"
    sha256 "3e07cbbd9c8a908bcb8e25d48becf1a5cbb4886fa975e9f34c672ed171df2318"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/56/f9/c037c35f6d0b6bc3bc7bfb314f1d6f1f9a341328ef47cd63fc4f850a7b27/sounddevice-0.5.5-py3-none-macosx_10_6_x86_64.macosx_10_6_universal2.whl"
    sha256 "05eb9fd6c54c38d67741441c19164c0dae8ce80453af2d8c4ad2e7823d15b722"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/a0/e5/58fd1a8d7b26fc113af244f966ee3aecf03cb9293cb935daaddc1e455e18/soundfile-0.13.1-py2.py3-none-macosx_11_0_arm64.whl"
    sha256 "743f12c12c4054921e15736c6be09ac26b3b3d603aef6fd69f9dde68748f2593"
  end

  resource "spacy" do
    url "https://files.pythonhosted.org/packages/3a/f8/07b03a2997fc2621aaeafae00af50f55522304a7da6926b07027bb6d0709/spacy-3.8.11-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "75a036d04c2cf11d6cb566c0a689860cc5a7a75b439e8fea1b3a6b673dabf25d"
  end

  resource "spacy-curated-transformers" do
    url "https://files.pythonhosted.org/packages/42/d8/f053d43125ae4ad14f3e2a12a475a656128233f1f40a272c6e09a05c73e8/spacy_curated_transformers-0.3.1-py2.py3-none-any.whl"
    sha256 "503559b6a1d6e44ec2c978e18ed871ce5c3d56871dc9216c0e1523428204e610"
  end

  resource "spacy-legacy" do
    url "https://files.pythonhosted.org/packages/c3/55/12e842c70ff8828e34e543a2c7176dac4da006ca6901c9e8b43efab8bc6b/spacy_legacy-3.0.12-py2.py3-none-any.whl"
    sha256 "476e3bd0d05f8c339ed60f40986c07387c0a71479245d6d0f4298dbd52cda55f"
  end

  resource "spacy-loggers" do
    url "https://files.pythonhosted.org/packages/33/78/d1a1a026ef3af911159398c939b1509d5c36fe524c7b644f34a5146c4e16/spacy_loggers-1.0.5-py3-none-any.whl"
    sha256 "196284c9c446cc0cdb944005384270d775fdeaf4f494d8e269466cfa497ef645"
  end

  resource "srsly" do
    url "https://files.pythonhosted.org/packages/2f/a2/bc6fd484ed703857043ae9abd6c9aea9152f9480a6961186ee6c1e0c49e8/srsly-2.5.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "ac4790a54b00203f1af5495b6b8ac214131139427f30fcf05cf971dde81930eb"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/a2/09/77d55d46fd61b4a135c444fc97158ef34a095e5681d0a6c10b75bf356191/sympy-1.14.0-py3-none-any.whl"
    sha256 "e091cc3e99d2141a0ba2847328f5479b05d94a6635cb96148ccb3f34671bd8f5"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/33/d1/8bb87d21e9aeb323cc03034f5eaf2c8f69841e40e4853c2627edf8111ed3/termcolor-3.3.0-py3-none-any.whl"
    sha256 "cf642efadaf0a8ebbbf4bc7a31cec2f9b5f21a9f726f4ccbb08192c9c26f43a5"
  end

  resource "thinc" do
    url "https://files.pythonhosted.org/packages/fa/3a/5112dfb45d4611fc722a4a6c72272993c170fb8962ea9f412fa336ead78b/thinc-8.3.9-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "26537530704fdae123e2ce360a60f9b85d33e76a01eacee3d68fe9f48f2a965b"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/2e/47/174dca0502ef88b28f1c9e06b73ce33500eedfac7a7692108aec220464e7/tokenizers-0.22.2-cp39-abi3-macosx_11_0_arm64.whl"
    sha256 "1e418a55456beedca4621dbab65a318981467a2b188e982a23e117f115ce5001"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/4a/91/48db081e7a63bb37284f9fbcefda7c44c277b18b0e13fbc36ea2335b71e6/typer-0.24.1-py3-none-any.whl"
    sha256 "112c1f0ce578bfb4cab9ffdabc68f031416ebcc216536611ba21f04e9aa84c9e"
  end

  resource "typer-slim" do
    url "https://files.pythonhosted.org/packages/a7/24/5480c20380dfd18cf33d14784096dca45a24eae6102e91d49a718d3b6855/typer_slim-0.24.0-py3-none-any.whl"
    sha256 "d5d7ee1ee2834d5020c7c616ed5e0d0f29b9a4b1dd283bdebae198ec09778d0e"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/a9/99/3ae339466c9183ea5b8ae87b34c0b897eda475d2aec2307cae60e5cd4f29/uritemplate-4.2.0-py3-none-any.whl"
    sha256 "962201ba1c4edcab02e60f9a0d3821e82dfc5d2d6662a21abd533879bdb8a686"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end

  resource "wasabi" do
    url "https://files.pythonhosted.org/packages/06/7c/34330a89da55610daa5f245ddce5aab81244321101614751e7537f125133/wasabi-1.1.3-py3-none-any.whl"
    sha256 "f76e16e8f7e79f8c4c8be49b4024ac725713ab10cd7f19350ad18a8e3f71728c"
  end

  resource "weasel" do
    url "https://files.pythonhosted.org/packages/a4/74/a148b41572656904a39dfcfed3f84dd1066014eed94e209223ae8e9d088d/weasel-0.4.3-py3-none-any.whl"
    sha256 "08f65b5d0dbded4879e08a64882de9b9514753d9eaa4c4e2a576e33666ac12cf"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/a2/16/9b02a6b99c09227c93cd4b73acc3678114154ec38da53043c0ddc1fba0dc/wrapt-2.1.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "6433ea84e1cfacf32021d2a4ee909554ade7fd392caa6f7c13f1f4bf7b8e8748"
  end

  # parakeet-mlx + librosa dependency closure (v1.5.0)

  resource "parakeet-mlx" do
    url "https://files.pythonhosted.org/packages/76/38/2ea2d9dfc35295b600e86583baf6cbb9f3242a52cbea98625ad788fb9afb/parakeet_mlx-0.5.1-py3-none-any.whl"
    sha256 "869cfe8d7a16b00f4a49d2f42a76210aca638681bd972911f4ab4d7bf9ca36b6"
  end

  resource "dacite" do
    url "https://files.pythonhosted.org/packages/94/35/386550fd60316d1e37eccdda609b074113298f23cef5bddb2049823fe666/dacite-1.9.2-py3-none-any.whl"
    sha256 "053f7c3f5128ca2e9aceb66892b1a3c8936d02c686e707bee96e19deef4bc4a0"
  end

  resource "librosa" do
    url "https://files.pythonhosted.org/packages/b5/ba/c63c5786dfee4c3417094c4b00966e61e4a63efecee22cb7b4c0387dda83/librosa-0.11.0-py3-none-any.whl"
    sha256 "0b6415c4fd68bff4c29288abe67c6d80b587e0e1e2cfb0aad23e4559504a7fa1"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/6c/2f/8bd31a1ea43c01ac215283d83aa5f8d5acbe7a36c85b82f1757bfe9ccb31/numba-0.65.0-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "b27ee4847e1bfb17e9604d100417ee7c1d10f15a6711c6213404b3da13a0b2aa"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/fa/48/4b7fe0e34c169fa2f12532916133e0b219d2823b540733651b34fdac509a/llvmlite-0.47.0-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "306a265f408c259067257a732c8e159284334018b4083a9e35f67d19792b164f"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/cf/a9/599c28631bad314d219cf9ffd40e985b24d603fc8a2f4ccc5ae8419a535b/scipy-1.17.1-cp312-cp312-macosx_14_0_arm64.whl"
    sha256 "cc90d2e9c7e5c7f1a482c9875007c095c3194b1cfedca3c2f3291cdc2bc7c086"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/49/d8/9be608c6024d021041c7f0b3928d4749a706f4e2c3832bbede4fb4f58c95/scikit_learn-1.8.0-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "5025ce924beccb28298246e589c691fe1b8c1c96507e6d27d12c5fadd85bfd76"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/32/d5/f9a850d79b0851d1d4ef6456097579a9005b31fea68726a4ae5f2d82ddd9/threadpoolctl-3.6.0-py3-none-any.whl"
    sha256 "43a0b8fd5a2928500110039e43a5eed8480b918967083ea48dc3ab9f13c4a7fb"
  end

  resource "soxr" do
    url "https://files.pythonhosted.org/packages/ff/1d/c945fea9d83ea1f2be9d116b3674dbaef26ed090374a77c394b31e3b083b/soxr-1.0.0-cp312-abi3-macosx_11_0_arm64.whl"
    sha256 "e973d487ee46aa8023ca00a139db6e09af053a37a032fe22f9ff0cc2e19c94b4"
  end

  resource "lazy_loader" do
    url "https://files.pythonhosted.org/packages/8a/a1/8d812e53a5da1687abb10445275d41a8b13adb781bbf7196ddbcf8d88505/lazy_loader-0.5-py3-none-any.whl"
    sha256 "ab0ea149e9c554d4ffeeb21105ac60bed7f3b4fd69b1d2360a4add51b170b005"
  end

  resource "audioread" do
    url "https://files.pythonhosted.org/packages/7e/16/fbe8e1e185a45042f7cd3a282def5bb8d95bb69ab9e9ef6a5368aa17e426/audioread-3.1.0-py3-none-any.whl"
    sha256 "b30d1df6c5d3de5dcef0fb0e256f6ea17bdcf5f979408df0297d8a408e2971b4"
  end

  resource "pooch" do
    url "https://files.pythonhosted.org/packages/2a/2d/d4bf65e47cea8ff2c794a600c4fd1273a7902f268757c531e0ee9f18aa58/pooch-1.9.0-py3-none-any.whl"
    sha256 "f265597baa9f760d25ceb29d0beb8186c243d6607b0f60b83ecf14078dbc703b"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/34/68/ba4f155f793a74c1483d4bdef136e1023f7bcba557f0db4ef3db3c665cf1/msgpack-1.1.2-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "446abdd8b94b55c800ac34b102dffd2f6aa0ce643c55dfc017ad89347db3dbdb"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/4e/8c/f3147f5c4b73e7550fe5f9352eaa956ae838d5c51eb58e7a25b9f3e2643b/decorator-5.2.1-py3-none-any.whl"
    sha256 "d316bb415a2d9e2d2b3abcc4084c6502fc09240e292cd76a76afc106a1c8e04a"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/75/a6/a0a304dc33b49145b21f4808d763822111e67d1c3a32b524a1baf947b6e1/platformdirs-4.9.6-py3-none-any.whl"
    sha256 "e61adb1d5e5cb3441b4b7710bea7e4c12250ca49439228cc1021c00dcfac0917"
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")

    # Install all resources, auto-detecting wheels vs sdists
    resources.each do |r|
      r.stage do
        whl = Dir["*.whl"].first
        if whl
          venv.pip_install Pathname.pwd/whl
        else
          venv.pip_install Pathname.pwd
        end
      end
    end

    venv.pip_install_and_link buildpath

    # Build Swift UI if Xcode is available and macOS 26 SDK is present
    swift_ui_dir = buildpath/"LocalWhisperUI"
    if swift_ui_dir.exist? && which("swift")
      sdk_check = quiet_system("swift", "package", "--package-path", swift_ui_dir.to_s, "dump-package")
      if sdk_check
        system "swift", "build", "--disable-sandbox", "-c", "release", "--package-path", swift_ui_dir.to_s
        swift_bin = swift_ui_dir/".build/release/LocalWhisperUI"
        if swift_bin.exist?
          app_dir = prefix/"LocalWhisperUI.app/Contents"
          (app_dir/"MacOS").mkpath
          cp swift_bin, app_dir/"MacOS/LocalWhisperUI"
          (app_dir/"Info.plist").write <<~XML
            <?xml version="1.0" encoding="UTF-8"?>
            <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
            <plist version="1.0">
            <dict>
              <key>CFBundleExecutable</key>
              <string>LocalWhisperUI</string>
              <key>CFBundleIdentifier</key>
              <string>com.local-whisper.ui</string>
              <key>CFBundleName</key>
              <string>Local Whisper</string>
              <key>CFBundleVersion</key>
              <string>1.3.0</string>
              <key>CFBundleShortVersionString</key>
              <string>1.3.0</string>
              <key>NSPrincipalClass</key>
              <string>NSApplication</string>
              <key>LSUIElement</key>
              <true/>
              <key>NSHighResolutionCapable</key>
              <true/>
              <key>CFBundlePackageType</key>
              <string>APPL</string>
            </dict>
            </plist>
          XML
        end
      end
    end
  end

  def post_install
    (var/"local-whisper").mkpath
    models_dir = Pathname.new(Dir.home)/".whisper/models"
    models_dir.mkpath
    quiet_system libexec/"bin/python", "-m", "spacy", "download", "en_core_web_sm"
    # Pre-download the default ASR model so the service works offline immediately
    quiet_system libexec/"bin/python", "-c",
      "from huggingface_hub import snapshot_download; " \
      "snapshot_download('mlx-community/Qwen3-ASR-1.7B-bf16', " \
      "cache_dir='#{models_dir}')"
  end

  service do
    run [opt_bin/"wh", "_run"]
    keep_alive false
    environment_variables PATH:                     "#{HOMEBREW_PREFIX}/bin:/usr/bin:/bin:/usr/sbin:/sbin",
                          HF_HUB_CACHE:             "#{Dir.home}/.whisper/models",
                          HF_HUB_OFFLINE:           "1",
                          HF_HUB_DISABLE_TELEMETRY: "1"
    log_path var/"log/local-whisper.log"
    error_log_path var/"log/local-whisper.log"
  end

  def caveats
    <<~EOS
      First-time setup (downloads models, ~2GB):
        wh doctor --fix

      Start the background service:
        brew services start local-whisper

      Usage:
        Double-tap Right Option to record, tap to stop.
        Text is transcribed and copied to clipboard.

      Permissions:
        macOS will prompt for Accessibility and Microphone access.
        Grant them to "Python" in System Settings > Privacy & Security.

      CLI:
        wh status    Show service status
        wh whisper   Text-to-speech
        wh listen    Record and transcribe
        wh config    Edit configuration
    EOS
  end

  test do
    assert_match "Local Whisper", shell_output("#{bin}/wh version")
  end
end
