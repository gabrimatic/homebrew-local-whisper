class LocalWhisper < Formula
  include Language::Python::Virtualenv

  desc "Local voice transcription with grammar correction for macOS"
  homepage "https://github.com/gabrimatic/local-whisper"
  url "https://github.com/gabrimatic/local-whisper/archive/refs/tags/v1.11.2.tar.gz"
  sha256 "68d50e4c8c41ce500a6595efa0fab649edd576f352450227f43a79ff9c2e4a5a"
  license "PolyForm-Noncommercial-1.0.0"
  head "https://github.com/gabrimatic/local-whisper.git", branch: "main"

  depends_on arch: :arm64
  depends_on "espeak-ng"
  depends_on "ffmpeg"
  depends_on :macos
  depends_on "python@3.12"

  preserve_rpath

  # macOS arm64 wheels (native extensions, no sdist build possible)
  resource "espeakng-loader" do
    url "https://files.pythonhosted.org/packages/a8/26/258c0cd43b9bc1043301c5f61767d6a6c3b679df82790c9cb43a3277b865/espeakng_loader-0.2.4-py3-none-macosx_11_0_arm64.whl"
    sha256 "d27cdca31112226e7299d8562e889d3e38a1e48055c9ee381b45d669072ee59f"
  end

  resource "mlx" do
    url "https://files.pythonhosted.org/packages/69/b0/e726ce51e1b445e4ed08c2d0e036a01c7532f4d1a856328da546a6f883bd/mlx-0.32.4-cp312-cp312-macosx_14_0_arm64.whl"
    sha256 "ff1d7be54758ea3a875b8fe54eff13bed17ad9566505e301f5d7851bf869680f"
  end

  resource "mlx-metal" do
    url "https://files.pythonhosted.org/packages/77/24/7e5b7ed5d28abacab4577c7a8dd1fca6e9058504f5f95ae4333c09420e2e/mlx_metal-0.32.4-py3-none-macosx_14_0_arm64.whl"
    sha256 "8019b2db622599267d66cc168b2f0dbf5af929790a6c3b3913e00eabc42a7947"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/4b/3c/379349820e9a6e713826de3d0b88f07728541bdcabe2a3afd128871cdc4b/torch-2.14.1-cp312-cp312-macosx_14_0_arm64.whl"
    sha256 "420dbf314c180ee4b86e9bc00aee5746a7d6e5bacdd7df925af671ed393f0b2e"
  end

  resource "native-ui" do
    url "https://github.com/gabrimatic/local-whisper/releases/download/v1.11.2/LocalWhisperUI-1.11.2-arm64-homebrew.zip"
    sha256 "43326cbaa8c6e76a3f7ccf8642bda33d734841acf6659f588257f8a3f68e738f"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/a2/f0/d6613774d86fbf6d145751d43c59875e47a6f9f17daee0aef173bd36d90e/markupsafe-3.0.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "0930db9bdc62d22944e10b066448bb65dc9abe9112880c7cab8da54db4284d5f"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl"
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "addict" do
    url "https://files.pythonhosted.org/packages/6a/00/b08f23b7d7e1e14ce01419a467b583edbb93c6cdb8654e54a9cc579cd61f/addict-2.4.0-py3-none-any.whl"
    sha256 "249bb56bbfd3cdc2a004ea0ff4c2b6ddc84d53bc2194761636eb314d5cfa5dfc"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/3e/30/e900b21425a860e195f32e37657aa1f7c7f2b1bfb26f03ca209b90933c06/annotated_doc-0.0.5-py3-none-any.whl"
    sha256 "117bac03a25ede5df5440e855b32d556049ca169ead221505badf432fed4b101"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl"
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/12/b8/4bd346e22b28902df4d651910f5242c28d84e4a5c2435ca5c3f797ed7e2e/anyio-4.15.1-py3-none-any.whl"
    sha256 "6152fdbbf9a77fdec97731721bebf7c4c44f7c29b424b0065826173efc7ed101"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
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
    url "https://files.pythonhosted.org/packages/c4/51/29046e48f693c54e5b7412216d447a1d8362c9653148d98c02cdf65fa733/certifi-2026.10.19-py3-none-any.whl"
    sha256 "42d35340cc5b9ba78e818ddbff0c5b1c2b779de448a340fd1b989f5fa8670e1b"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/54/7d/16e5a096677b5e313ca80cd5e5170efa3ea44624a82bb111925522da64b1/cffi-2.1.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f81b3b8f3d4e343550fa4baa0e479bba9f2d29ce9c2e9b51d1ce1718d7442fcf"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e7/c8/693809898870237d82785a03f3b2b58fe4c9f14669f84a7d4e623c92a59e/charset_normalizer-3.5.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "ed2a239c0ea213acc1908150a3037257083c7c083128f1a4cec2ec4b97dca491"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/58/50/6c0d534c5f134586a8e1ba4e330569e32f057e33372ae556463212fb4cd3/click-8.5.0-py3-none-any.whl"
    sha256 "255bc9599cf7748b4b1a446ccc735421bd08a2ae529a8b88597d3de5664ee360"
  end

  resource "cloudpathlib" do
    url "https://files.pythonhosted.org/packages/97/aa/c333f1be2afab2d033d51a66cb105f4bfc885b0c546e1168fb889a416b9d/cloudpathlib-0.26.0-py3-none-any.whl"
    sha256 "abcd7f54bcbb2fbb79c0e96b79241f08866760aee6276586882b3558672d571b"
  end

  resource "confection" do
    url "https://files.pythonhosted.org/packages/8d/e4/d66708bdf0d92fb4d49b22cdff4b10cec38aca5dcd7e81d909bb55c65cd7/confection-1.3.3-py3-none-any.whl"
    sha256 "b9fef9ee84b237ef4611ec3eb5797b70e13063e6310ad9f15536373f5e313c82"
  end

  resource "csvw" do
    url "https://files.pythonhosted.org/packages/fe/7f/9586327961379fd23362eafddac9fc9ba1d6783686d20154d55e93dd8a61/csvw-4.1.0-py2.py3-none-any.whl"
    sha256 "d432d4cccd8dcdf31ccb2272d6d7ad40a9ebde7de3c7d6ced9033afb23bb76dd"
  end

  resource "curated-tokenizers" do
    url "https://files.pythonhosted.org/packages/ae/4a/74ee64f9b85534d47102b2a2ff2d2014ef8c72cb338fd2f294e1c4b02ab2/curated_tokenizers-0.0.10-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "6da08827cbf28f5b8d37ecfdd26c027be99d5fac2d2dc2d03a611c7ce294c1af"
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
    url "https://files.pythonhosted.org/packages/8e/a3/9bc26acff301fe1aaea1cc3d82a1d57e0a34df3e1cadbfa91ac2dbcdde5c/filelock-4.2.0-py3-none-any.whl"
    sha256 "2ff5690882e8cdb00ef31fb3d01a3094c29f30985426c59495afb1733f3b7238"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/6c/c0/a98505f18594f1bce828bb159cec0fcf9860562f1a2c85913409fc8f3d9e/fsspec-2026.9.0-py3-none-any.whl"
    sha256 "8dd6e646e99ea382bd85f97a45e6b526a442d79423a7dc673f1e2756d05fcb5f"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/c3/47/a26ebdce7056a61e931f228439bc0ab08cbec239d1690f965e5e637cba79/hf_xet-1.7.0-cp38-abi3-macosx_11_0_arm64.whl"
    sha256 "59fba37039233c7fcbe196817d6cdcf1b40dfb17b410f229d85b0cf0a1848da4"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/eb/b0/0f7b430fd100b3a3b037fdbb314878200241082e607b3383c63d91a13a72/huggingface_hub-2.2.0-py3-none-any.whl"
    sha256 "1667f145dc56dc210d60966069397df9ecfca9607a5d43db88b308c89dae56b3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/58/a2/bb081bab032533a855d44de1d56f8e8426114ff1ba5d1f07a438a0a654f8/idna-3.20-py3-none-any.whl"
    sha256 "ab7ae7122974553370f0bdb919e1a960b2cd1bc1ef0276416d896db81c14582c"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/15/aa/0aca39a37d3c7eb941ba736ede56d689e7be91cab5d9ca846bde3999eba6/isodate-0.7.2-py3-none-any.whl"
    sha256 "28009937d8031054830160fce6d409ed342816b543597cece116d966c6d99e15"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/18/53/84099323c2ec4be98d935f63c033ac4151ee83836ca1050ede3b3aadf155/joblib-1.6.0-py3-none-any.whl"
    sha256 "3dbbf9f6e4b592a2357b854608e980fe6390d131d7a82f011a377ef2ebef7aba"
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
    url "https://files.pythonhosted.org/packages/25/d4/c2fb5b9ba0eba611f24b975e0452d5c7113a7b8190c5770da01c245aeaa3/kokoro_mlx-0.1.3-py3-none-any.whl"
    sha256 "86872d1c9423cfdedc125b86263cd1138da8499cae3351e526e80cb5aae01df1"
  end

  resource "language-tags" do
    url "https://files.pythonhosted.org/packages/0a/21/b48b9e8408b3faec9fb7cb2f68352c7724add35a980c948eaceb29ac41e4/language_tags-1.3.1-py3-none-any.whl"
    sha256 "f7db7ef8879523019603e09644a86d95ba60595ce5e5ea82d46e8971b0f68f7b"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
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
    url "https://files.pythonhosted.org/packages/43/e3/7d92a15f894aa0c9c4b49b8ee9ac9850d6e63b03c9c32c0367a13ae62209/mpmath-1.3.0-py3-none-any.whl"
    sha256 "a0b2b9fe80bbcd81a6647ff13108738cfb482d481d826cc0e02f5b35e5c88d2c"
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
    url "https://files.pythonhosted.org/packages/ea/12/92c4c131527599e8288d6918e888d88726f84d805d784b771f32408aeaef/numpy-2.4.6-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "ebfb099f8dcf083deef3ac1ca4c1503f387cf76296fcb3816b66f5ecb5f54fdb"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "phonemizer-fork" do
    url "https://files.pythonhosted.org/packages/64/f1/0dcce21b0ae16a82df4b6583f8f3ad8e55b35f7e98b6bf536a4dd225fa08/phonemizer_fork-3.3.2-py3-none-any.whl"
    sha256 "97305c76f4183b3825dae8f4c032265fe78c9946ce58c47d4b62161349264b74"
  end

  resource "preshed" do
    url "https://files.pythonhosted.org/packages/8e/ce/cad5a8145881a771e6c0d002f2e585fc19b962f120860b54d32af5baa342/preshed-3.0.13-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f05b08ce92399c0655b5e0eb5a1cc1f9e295703ed3aabdfaf6538dfa8ae23d57"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/90/11/0e6f11117525ff0eec40ebac3d313376f102df93ca44ad9e893ee85e4f89/pycparser-3.11-py3-none-any.whl"
    sha256 "51d5a8ba2be0bbe440b99d2112604c95bbbc3c2748a64260186c541e1729cd80"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/35/ea/a56b9fe5066f3537b7882f77e9c5dfb26d8c2eefdaed9b5fc73d57b4dc22/pydantic-2.14.1-py3-none-any.whl"
    sha256 "9195d967ec791692a04438115466764fb8b9a27b31f14a760437694f40d6b454"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/db/a3/f8b1b39349c33037c73d7a1b794c9c29d8f07d5bd2b74399c1375a529cc6/pydantic_core-2.50.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "e8e1d6ce820aa23317e8209a86bd65a540973c12dc7552b48a4f6c8e9926815e"
  end

  resource "pynput" do
    url "https://files.pythonhosted.org/packages/6d/98/bbeb760852adb27f166ce1617f0e51aabb15f21b1e60ea703f2aed3c78ac/pynput-1.8.2-py2.py3-none-any.whl"
    sha256 "8cc38cf13a6ab2749cb375678be8a0fd705d7ce49c8001ff5db4007a723bbef1"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/86/b2/bbf7f049880ab40d110e66f25122342a1f6c98d6fe3c59bb98985503c660/pyobjc_core-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "122e6ad302a2abf5d4d4adb0156db751600ddf2768441696cba17b31323085e7"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/00/ed/9d85751400f1cd23d71c824a57352ec4d216a8728255dc00c032c431d3ad/pyobjc_framework_applicationservices-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "5506bd6b5268a97fcb79b5b021f6cbbaaf5cdff3ec87094d8870268d8cf096ed"
  end

  resource "pyobjc-framework-AVFoundation" do
    url "https://files.pythonhosted.org/packages/33/8b/ea58df10fcf060b0a8a3fb56cbc0b06722b62cab6ef013b0ef346735761b/pyobjc_framework_avfoundation-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "248fd714f7a63535577cde3a5bd097f1e309011586b799c110fb9bab27e88f55"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/fd/2f/b67e73d8bc367e03fe7861cd9c49fff9dcfa6db83bc0630c0adcfb25b7fa/pyobjc_framework_cocoa-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "e106f395531e67694376b0f1184612cbeea3ec8b9bf56b55ef41d026171d2a2d"
  end

  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/f0/89/bd18309c59eaaf694253ca932844743d6429023b99260684181367ba0564/pyobjc_framework_coreaudio-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "7222c2b2317a6a350e08239b3b7ba7b4570b06ec8697b9bc53793bd6f85e3134"
  end

  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/cd/26/de907d6ead970916b39787e52bed679945328161f2abac533515b2ac8934/pyobjc_framework_coremedia-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "84f5deee8d366bf73069a0525509637aa578ccd0e6688923b09999a8bc3077a8"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/1c/88/e85a9268285fc0c28284dbdc869a27f5d3f2e436d2838221a6704b4f8eee/pyobjc_framework_coretext-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "a69611de569d92776e6391ca25492a5bbb4a05ba744006349e377a4fc5f7c8a5"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/ed/e4/8be95d2ff850f82fb55b44c63333a00a920bf8a73642e7d9c2f3638a26d2/pyobjc_framework_quartz-12.2.2-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "7f668979d0c7320bf8f7ed6e030da578f93ab0f5dd619b295ec735cd8d5faa34"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/38/bb/d215ee7c73b61497b28a5503f9f53523f294fcc936762b7caf90e0c1c2b5/pyparsing-3.3.3-py3-none-any.whl"
    sha256 "ece8c00a69cf01b45d0b1dedabb469c90d8caf996d4fda40f147627a122849a4"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "qwen3-asr-mlx" do
    url "https://files.pythonhosted.org/packages/5d/00/3e6f9bce7bada23390f753be71d79834cc695841a087a0211481161802b5/qwen3_asr_mlx-0.2.0-py3-none-any.whl"
    sha256 "bfd9c08e01482780556d52782b6a25ebe4a921e2e817984c324e88dbe6fcc16b"
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
    url "https://files.pythonhosted.org/packages/37/14/f3f0ba083d2094392d5eabf56db5ea6ba469fd6e927afd187042054ea68a/regex-2026.9.29-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "f57dc6b8fef170f105d2cf5cdce254f47b137d7755086cf7050f47e16582abba"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/c4/e5/63ca2c4edf4e00657584608bee1001302bbf8c5f569340b78304f2f446cb/rfc3986-1.5.0-py2.py3-none-any.whl"
    sha256 "a86d6e1f5b1dc238b218b012df0aa79409667bb209e58da56d0b94704e712a97"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/90/81/ac6a0d064982251856ce009c9e1dd51a34110b3c055aa7d1aad18b4899a3/rpds_py-2026.9.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "e21c1429e205828ea886a2293a4a2c8e01f4c25d9893ca330e97a6cf73f52e7b"
  end

  resource "segments" do
    url "https://files.pythonhosted.org/packages/be/60/eef9acce946177f92c9aabf432224d87ab908bafafac516a36ab924199f3/segments-2.4.0-py2.py3-none-any.whl"
    sha256 "4021dc67f201cc03c864c74c618bdb163b1af629da3040babbaa37d8813f3db0"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/95/9c/c510029fc6ef33a6275cd2c5d3cecd6613dfd6aa401d57c54f1c18852ccf/setuptools-84.0.0-py3-none-any.whl"
    sha256 "51a52592b3b99e102b609654876bd65f19f999935166d1352678931132b0c670"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl"
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "smart-open" do
    url "https://files.pythonhosted.org/packages/d1/79/60e14c5a19f39ebcf4fecd8ae8b0b01418ff5839bd7e66cf02b019d31826/smart_open-8.0.3-py3-none-any.whl"
    sha256 "c3f67795b1a2bdb62dd9aca9ba4d4018e8f11e4188700b3246ea5ae049f65887"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/b6/84/85e719d49cf98b2f406d9ac9c338892286c4448eb42ef0b2625ccf159616/sounddevice-0.5.6-py3-none-macosx_10_6_x86_64.macosx_10_6_universal2.whl"
    sha256 "e3aef00ad8b1d1740eb66d9a7671eab88a4d2b8fa4ab33498d742e63b65c309c"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/63/7a/dfdd6f8c748988427119f75eb860a3cedd858d1aea1fe28f39ad8559ef22/soundfile-0.14.0-py2.py3-none-macosx_11_0_arm64.whl"
    sha256 "d828d35a059626da52f1415b5faee610aeab393319cb3fc4a9aef47b619fc14c"
  end

  resource "spacy" do
    url "https://files.pythonhosted.org/packages/d2/1e/247e43597b10576eccfed55af7999663f00ae934394acebef724cabdc1b7/spacy-3.8.16-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "44a641085abbe3a09ea56a89f2e50b5f51aea6cf69213b70305fb48e341b883b"
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
    url "https://files.pythonhosted.org/packages/a1/31/2b0ae5c9258bef6477b6309a609505b117773d92f345a1b04ffea9f635bc/srsly-2.5.4-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "aef76c62564593404770760bef01ffb22b8b2781a7dc2a4cc8a70ebf36c438b6"
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
    url "https://files.pythonhosted.org/packages/45/8f/69d7338575d98df85d0b54c0f5fc277dba72587fe9ab846ecdd12a998bcb/thinc-8.3.13-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "3710d318b4e5460cf366a6f7b5ddbefb5d39dbd4cfa408222750fdc6c27c4411"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/b2/72/01e49f032bb346e5aaf06c10c74fe8aeec847173adbadd66eb7c53054bf2/tokenizers-0.23.3-cp310-abi3-macosx_11_0_arm64.whl"
    sha256 "68649e97d5b43c44c031d8d848874a6eecae8f8fe40ea989aa777a5a83aca716"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a7/03/921a3d3c75785aca9ebfbfcabfbc3a1be12e2ab5265deb026d55a5a3f83e/tqdm-4.70.1-py3-none-any.whl"
    sha256 "c293e525e6fef9c20e8728fd4612df02a0aa31bb5fe91ecd93e123b1b7bffa73"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/07/ea/2e31b67051e91a133189e9c000c222502ddc6969856416de0d095de4c0b0/typer-0.27.3-py3-none-any.whl"
    sha256 "e50022f28b82a86313e54501317a1db64bf8f8d036ff8cfe5ca7e47675454aff"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/67/81/4add07e5172b7ac40d8ed5ff580409a7801a4fe26d529bdd915401dabfbe/typing_inspection-0.4.4-py3-none-any.whl"
    sha256 "65b8397ba37ccbce054456aaccddfc91e6e3083c92824df348d96ca832f3f147"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/a9/99/3ae339466c9183ea5b8ae87b34c0b897eda475d2aec2307cae60e5cd4f29/uritemplate-4.2.0-py3-none-any.whl"
    sha256 "962201ba1c4edcab02e60f9a0d3821e82dfc5d2d6662a21abd533879bdb8a686"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/92/9d/c4e665119135114480843e7ab388fa94d8480650450e6f8e26b70d323a4c/urllib3-2.8.0-py3-none-any.whl"
    sha256 "0cf3cae568d36aa9576b28dfb35f11328f1cb974ca7647d9475ebb86c75ac6e3"
  end

  resource "wasabi" do
    url "https://files.pythonhosted.org/packages/06/7c/34330a89da55610daa5f245ddce5aab81244321101614751e7537f125133/wasabi-1.1.3-py3-none-any.whl"
    sha256 "f76e16e8f7e79f8c4c8be49b4024ac725713ab10cd7f19350ad18a8e3f71728c"
  end

  resource "weasel" do
    url "https://files.pythonhosted.org/packages/0a/07/57ebf7a6798b016c064bd0ca81b4c6a99daa4dc377b898bc7b41eb6b5af0/weasel-1.0.0-py3-none-any.whl"
    sha256 "89518acee027f49d743126c3502d35e6dd14f5768be5c37c9af47c171b6005cc"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/7f/b0/335b0af2930938678fcde954b29780b26308961b93df5e0192fc182e8b7e/wrapt-2.5.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "c44dd9881626da7d621c23805f26726f6b023cf3e9755f48d092bc9cbef4a8e7"
  end

  resource "parakeet-mlx" do
    url "https://files.pythonhosted.org/packages/f6/72/90a8cc7d86e37e9799dd822b52179042a60200a54f96d4c6213b06337154/parakeet_mlx-0.5.3-py3-none-any.whl"
    sha256 "64c1f0f48445f6a1b99e6ddc2670f9b4d7218e0237ba883a8cfa850b24dca7c8"
  end

  resource "dacite" do
    url "https://files.pythonhosted.org/packages/94/35/386550fd60316d1e37eccdda609b074113298f23cef5bddb2049823fe666/dacite-1.9.2-py3-none-any.whl"
    sha256 "053f7c3f5128ca2e9aceb66892b1a3c8936d02c686e707bee96e19deef4bc4a0"
  end

  resource "librosa" do
    url "https://files.pythonhosted.org/packages/b5/ba/c63c5786dfee4c3417094c4b00966e61e4a63efecee22cb7b4c0387dda83/librosa-0.11.0-py3-none-any.whl"
    sha256 "0b6415c4fd68bff4c29288abe67c6d80b587e0e1e2cfb0aad23e4559504a7fa1"
  end

  resource "audioread" do
    url "https://files.pythonhosted.org/packages/7e/16/fbe8e1e185a45042f7cd3a282def5bb8d95bb69ab9e9ef6a5368aa17e426/audioread-3.1.0-py3-none-any.whl"
    sha256 "b30d1df6c5d3de5dcef0fb0e256f6ea17bdcf5f979408df0297d8a408e2971b4"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/c5/cb/b6a39189f1f342baa04ad1055bb5f63ec4061ec1f80f6b34e90c68fe1e7f/numba-0.68.0-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "0fdaa2f0256862ebbcd9632ef01ba2a4b94e6d116029e5051a92340d4050a501"
  end

  resource "llvmlite" do
    url "https://files.pythonhosted.org/packages/d9/1f/2576416b3e9b73f77b8331b7f2e41ce5ae7bbff0489eb16d98099a71693c/llvmlite-0.50.0-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "55f50a6b7c0b8de88b05d6bc407d70a60486ce024013997dc97e202bd187c75b"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/b2/02/cf107b01494c19dc100f1d0b7ac3cc08666e96ba2d64db7626066cee895e/scipy-1.17.1-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "fcb310ddb270a06114bb64bbe53c94926b943f5b7f0842194d585c65eb4edd76"
  end

  resource "scikit-learn" do
    url "https://files.pythonhosted.org/packages/60/ea/57e57539ce175d774fc291ed091b0a6d756854b92cd92554c6bb4d0ae498/scikit_learn-1.9.1-cp312-cp312-macosx_12_0_arm64.whl"
    sha256 "8c14ce41d561f7749f990b41d6703fe02c4669fbc485e598e069e0a1967b488e"
  end

  resource "threadpoolctl" do
    url "https://files.pythonhosted.org/packages/43/3f/f88a53f60a472b46f4023f56d204dd7de33d34c5d2acbfa0d70a674e639e/threadpoolctl-3.7.0-py3-none-any.whl"
    sha256 "cd8b60b5641b45c67bbf73c64c843235fc2d8a480c87389f52f5dbee893b86be"
  end

  resource "soxr" do
    url "https://files.pythonhosted.org/packages/03/dc/200013a74641f8774664bbcd2346c695c05c2e300ea792adcb40a293eed0/soxr-1.1.0-cp312-abi3-macosx_11_0_arm64.whl"
    sha256 "d6a7ad82b8d5f3fcc04b1d2ca055562b96af571e1d4fa7c6c61d0fb509ac43b4"
  end

  resource "lazy-loader" do
    url "https://files.pythonhosted.org/packages/23/93/4e45e37f26c820216704b36b8e67cc55c490a7abd287a78a26a2c0e21386/lazy_loader-0.6-py3-none-any.whl"
    sha256 "77253be3391b06124a0e16105bd663b6c54470af1a9ca8e1cf026f38d58ed056"
  end

  resource "pooch" do
    url "https://files.pythonhosted.org/packages/2a/2d/d4bf65e47cea8ff2c794a600c4fd1273a7902f268757c531e0ee9f18aa58/pooch-1.9.0-py3-none-any.whl"
    sha256 "f265597baa9f760d25ceb29d0beb8186c243d6607b0f60b83ecf14078dbc703b"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/eb/c7/8576ad39f4ca42ddad26f68eb8621d2d0a60501193d480f504bd9d7f36c4/msgpack-1.2.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "905a189853d6bdb204c7ae5f4ab77fb857448abfff574d3d93c62e2815b24b4f"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/05/7f/798705f5296a58ca505d600456748d1be48078eac8a7050d8a98bc9edb89/decorator-5.3.1-py3-none-any.whl"
    sha256 "f47fe6fdbd2edd623ecfe36875d37aba411624e2670dd395dddae1358689bb3c"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/8d/15/1633010b26e88e872c93b67c0b6c5e174fb74cb6fb5c1472b4d51d4a8f22/platformdirs-4.13.0-py3-none-any.whl"
    sha256 "3dbcf4cd708f21cf876c4eaa90e58412bc4f033d87143f41b1493ff77c25b7e1"
  end

  resource "cloudpickle" do
    url "https://files.pythonhosted.org/packages/88/39/799be3f2f0f38cc727ee3b4f1445fe6d5e4133064ec2e4115069418a5bb6/cloudpickle-3.1.2-py3-none-any.whl"
    sha256 "9acb47f6afd73f60dc1df93bb801b472f05ff42fa6c84167d25cb206be1fbf4a"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/09/ba/a4568248771ce81957bfb7cc600264a40fbcda092391ee1c415c50be4bea/httpcore2-2.13.1-py3-none-any.whl"
    sha256 "e1e05d4f25f7d7d496bfb96748f6f4b67657b03da069b3a68c36069f3db73d0a"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/d8/9c/6fe8931fd9f381042a9e4c7d5a7b4cbf7016b252bec0c99a49fce42c3326/httpx2-2.13.1-py3-none-any.whl"
    sha256 "6dff50fabc270ee5fd25d845d0b078ed20564579744d6d962850975996d2f9a4"
  end

  resource "narwhals" do
    url "https://files.pythonhosted.org/packages/d1/89/5d4c86da1130d9059681e5b6cd7645df5c10279a6a079c5c37dcb2cc6f3f/narwhals-2.27.1-py3-none-any.whl"
    sha256 "d057df13f5852b8e157596e82eb5e955fad267425df5e420e0ee9863da483b31"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/51/e9/3a7820be2bb0fe53b6bc9c3be26d3d1158004e4c3ab953aa6840b955b1e9/truststore-0.10.5-py3-none-any.whl"
    sha256 "9aaaedaefaf06d8b206278cf8b5012bc897f485a874503501e12d776df78951c"
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")

    # Install all resources, auto-detecting wheels vs sdists
    resources.each do |r|
      next if r.name == "native-ui"

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

    resource("native-ui").stage do
      prefix.install "LocalWhisperUI.app"
    end
  end

  service do
    run [opt_bin/"wh", "_run"]
    keep_alive false
    environment_variables PATH:                        "#{HOMEBREW_PREFIX}/bin:/usr/bin:/bin:/usr/sbin:/sbin",
                          HF_HUB_CACHE:                "#{Dir.home}/.whisper/models",
                          HF_HUB_DISABLE_TELEMETRY:    "1",
                          HOMEBREW_NO_INSTALL_CLEANUP: "1"
    log_path var/"log/local-whisper.log"
    error_log_path var/"log/local-whisper.log"
  end

  def caveats
    <<~EOS
      First-time setup:
        wh setup

      This downloads the default local speech model, checks Microphone and
      Accessibility permissions, and starts the background service.

      Usage:
        Double-tap Right Option to record, tap to stop.
        Text is transcribed and copied to clipboard.

      Permissions:
        macOS will prompt for Accessibility and Microphone access.
        Grant them to "Python" in System Settings > Privacy & Security.

      CLI:
        wh status    Show service status
        wh start     Start the background service
        wh stop      Stop the background service
        wh restart   Restart the background service
        wh setup     Run first-time setup again
        wh update    Update Local Whisper and restart the service
        wh doctor    Check system health
        wh whisper   Text-to-speech
        wh listen    Record and transcribe
        wh config    Edit configuration
    EOS
  end

  test do
    assert_match "Local Whisper", shell_output("#{bin}/wh version")
  end
end
