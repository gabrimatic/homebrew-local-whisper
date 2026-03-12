class LocalWhisper < Formula
  include Language::Python::Virtualenv

  desc "Local voice transcription with grammar correction for macOS"
  homepage "https://github.com/gabrimatic/local-whisper"
  url "https://github.com/gabrimatic/local-whisper/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "546721c8f5ed008f8540eeefc4a57e5bd0bf650566c206e63a1a588f3d0cb09a"
  license "MIT"
  head "https://github.com/gabrimatic/local-whisper.git", branch: "main"

  depends_on arch: :arm64
  depends_on "espeak-ng"
  depends_on :macos
  depends_on "python@3.12"

  # Platform-specific wheels (macOS arm64 only)
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

  # Standard PyPI resources (sdists)
  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "addict" do
    url "https://files.pythonhosted.org/packages/85/ef/fd7649da8af11d93979831e8f1f8097e85e82d5bfeabc8c68b39175d8e75/addict-2.4.0.tar.gz"
    sha256 "b3b2210e0e067a281f5646c8c5db92e99b7231ea8b0eb5f74dbdf9e259d4e494"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/b2/51899539b6ceeeb420d40ed3cd4b7a40519404f9baf3d4ac99dc413a834b/babel-2.18.0.tar.gz"
    sha256 "b80b99a14bd085fcacfa15c9165f651fbb3406e66cc603abf11c5750937c992d"
  end

  resource "blis" do
    url "https://files.pythonhosted.org/packages/d0/d0/d8cc8c9a4488a787e7fa430f6055e5bd1ddb22c340a751d9e901b82e2efe/blis-1.3.3.tar.gz"
    sha256 "034d4560ff3cc43e8aa37e188451b0440e3261d989bb8a42ceee865607715ecd"
  end

  resource "catalogue" do
    url "https://files.pythonhosted.org/packages/38/b4/244d58127e1cdf04cf2dc7d9566f0d24ef01d5ce21811bab088ecc62b5ea/catalogue-2.0.10.tar.gz"
    sha256 "4f56daa940913d3f09d589c191c74e5a6d51762b3a9e37dd53b7437afd6cda15"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/af/2d/7bf41579a8986e348fa033a31cdd0e4121114f6bce2457e8876010b092dd/certifi-2026.2.25.tar.gz"
    sha256 "e887ab5cee78ea814d3472169153c2d12cd43b14bd03329a39a9c6e2e80bfba7"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/1d/35/02daf95b9cd686320bb622eb148792655c9412dbb9b67abb5694e5910a24/charset_normalizer-3.4.5.tar.gz"
    sha256 "95adae7b6c42a6c5b5b559b1a99149f090a57128155daeea91732c8d970d8644"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "cloudpathlib" do
    url "https://files.pythonhosted.org/packages/f4/18/2ac35d6b3015a0c74e923d94fc69baf8307f7c3233de015d69f99e17afa8/cloudpathlib-0.23.0.tar.gz"
    sha256 "eb38a34c6b8a048ecfd2b2f60917f7cbad4a105b7c979196450c2f541f4d6b4b"
  end

  resource "confection" do
    url "https://files.pythonhosted.org/packages/51/d3/57c6631159a1b48d273b40865c315cf51f89df7a9d1101094ef12e3a37c2/confection-0.1.5.tar.gz"
    sha256 "8e72dd3ca6bd4f48913cd220f10b8275978e740411654b6e8ca6d7008c590f0e"
  end

  resource "csvw" do
    url "https://files.pythonhosted.org/packages/d4/90/64efac40e52949079c2b4030167ee68ec52cf061f11e368ee1a82e410670/csvw-3.7.0.tar.gz"
    sha256 "869b5c761481e52c01a99fb4749b278a4b8b0db4e0fa1965a33a3441c703465b"
  end

  resource "curated-tokenizers" do
    url "https://files.pythonhosted.org/packages/fc/fa/b2d55f0d53c7c7f5dc0b6dbb48cc4344ee84fb572f23de28040bf2cde89d/curated-tokenizers-0.0.9.tar.gz"
    sha256 "c93d47e54ab3528a6db2796eeb4bdce5d44e8226c671e42c2f23522ab1d0ce25"
  end

  resource "curated-transformers" do
    url "https://files.pythonhosted.org/packages/70/06/6c12c149a7f737dacc76b4c3949dbc7ff87d622567b86996896ae4d104aa/curated-transformers-0.1.1.tar.gz"
    sha256 "4671f03314df30efda2ec2b59bc7692ea34fcea44cb65382342c16684e8a2119"
  end

  resource "cymem" do
    url "https://files.pythonhosted.org/packages/c0/8f/2f0fbb32535c3731b7c2974c569fb9325e0a38ed5565a08e1139a3b71e82/cymem-2.0.13.tar.gz"
    sha256 "1c91a92ae8c7104275ac26bd4d29b08ccd3e7faff5893d3858cb6fadf1bc1588"
  end

  resource "dlinfo" do
    url "https://files.pythonhosted.org/packages/85/8e/8f2f94cd40af1b51e8e371a83b385d622170d42f98776441a6118f4dd682/dlinfo-2.0.0.tar.gz"
    sha256 "88a2bc04f51d01bc604cdc9eb1c3cc0bde89057532ca6a3e71a41f6235433e17"
  end

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/94/b8/00651a0f559862f3bb7d6f7477b192afe3f583cc5e26403b44e59a55ab34/filelock-3.25.2.tar.gz"
    sha256 "b64ece2b38f4ca29dd3e810287aa8c48182bbecd1ae6e9ae126c9b35f1382694"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/51/7c/f60c259dcbf4f0c47cc4ddb8f7720d2dcdc8888c8e5ad84c73ea4531cc5b/fsspec-2026.2.0.tar.gz"
    sha256 "6544e34b16869f5aacd5b90bdf1a71acb37792ea3ddf6125ee69a22a53fb8bff"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/68/01/928fd82663fb0ab455551a178303a2960e65029da66b21974594f3a20a94/hf_xet-1.4.0.tar.gz"
    sha256 "48e6ba7422b0885c9bbd8ac8fdf5c4e1306c3499b82d489944609cc4eae8ecbd"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "huggingface_hub" do
    url "https://files.pythonhosted.org/packages/d5/7a/304cec37112382c4fe29a43bcb0d5891f922785d18745883d2aa4eb74e4b/huggingface_hub-1.6.0.tar.gz"
    sha256 "d931ddad8ba8dfc1e816bf254810eb6f38e5c32f60d4184b5885662a3b167325"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/41/f2/d34e8b3a08a9cc79a50b2208a93dce981fe615b64d5a4d4abee421d898df/joblib-1.5.3.tar.gz"
    sha256 "8561a3269e6801106863fd0d6d84bb737be9e7631e33aaed3fb9ce5953688da3"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "kokoro-mlx" do
    url "https://files.pythonhosted.org/packages/09/35/ca9037b6903fedb9d5979ff3e0dbe252eae6b64b5e6a6d22b043947721b1/kokoro_mlx-0.1.1.tar.gz"
    sha256 "e26b8f3a269e2f16bb401bf3bc94c74c23487e0ec0d1ee0736053147099f71f2"
  end

  resource "language-tags" do
    url "https://files.pythonhosted.org/packages/e0/7e/b6a0efe4fee11e9742c1baaedf7c574084238a70b03c1d8eb2761383848f/language_tags-1.2.0.tar.gz"
    sha256 "e934acba3e3dc85f867703eca421847a9ab7b7679b11b5d5cfd096febbf8bde6"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "misaki" do
    url "https://files.pythonhosted.org/packages/1a/c7/fb01370a76585b46595a01b52f18e65c8ba6d7a313a05e5d9fff0a8e1c69/misaki-0.9.4.tar.gz"
    sha256 "3960fa3e6de179a90ee8e628446a4a4f6b8c730b6e3410999cf396189f4d9c40"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "murmurhash" do
    url "https://files.pythonhosted.org/packages/23/2e/88c147931ea9725d634840d538622e94122bceaf346233349b7b5c62964b/murmurhash-1.0.15.tar.gz"
    sha256 "58e2b27b7847f9e2a6edf10b47a8c8dd70a4705f45dccb7bf76aeadacf56ba01"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/6a/51/63fe664f3908c97be9d2e4f1158eb633317598cfa6e1fc14af5383f17512/networkx-3.6.1.tar.gz"
    sha256 "26b7c357accc0c8cde558ad486283728b65b6a95d85ee1cd66bafab4c8168509"
  end

  resource "num2words" do
    url "https://files.pythonhosted.org/packages/f6/58/ad645bd38b4b648eb2fc2ba1b909398e54eb0cbb6a7dbd2b4953e38c9621/num2words-0.5.14.tar.gz"
    sha256 "b066ec18e56b6616a3b38086b5747daafbaa8868b226a36127e0451c0cf379c6"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/10/8b/c265f4823726ab832de836cdd184d0986dcf94480f81e8739692a7ac7af2/numpy-2.4.3.tar.gz"
    sha256 "483a201202b73495f00dbc83796c6ae63137a9bdade074f7648b3e32613412dd"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "phonemizer-fork" do
    url "https://files.pythonhosted.org/packages/42/fa/9294d2f11890ca49d0bdac7a4da60cbe5686629bfd4987cae0ad75e051cc/phonemizer_fork-3.3.2.tar.gz"
    sha256 "10e16e827d0443b087062e21b55e805c00989cf1343b2e81e734cae5f6c0cf69"
  end

  resource "preshed" do
    url "https://files.pythonhosted.org/packages/bf/34/eb4f5f0f678e152a96e826da867d2f41c4b18a2d589e40e1dd3347219e91/preshed-3.0.12.tar.gz"
    sha256 "b73f9a8b54ee1d44529cc6018356896cff93d48f755f29c134734d9371c0d685"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "pynput" do
    url "https://files.pythonhosted.org/packages/f0/c3/dccf44c68225046df5324db0cc7d563a560635355b3e5f1d249468268a6f/pynput-1.8.1.tar.gz"
    sha256 "70d7c8373ee98911004a7c938742242840a5628c004573d84ba849d4601df81e"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end

  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/be/6a/d4e613c8e926a5744fc47a9e9fea08384a510dc4f27d844f7ad7a2d793bd/pyobjc_framework_applicationservices-12.1.tar.gz"
    sha256 "c06abb74f119bc27aeb41bf1aef8102c0ae1288aec1ac8665ea186a067a8945b"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end

  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/29/da/682c9c92a39f713bd3c56e7375fa8f1b10ad558ecb075258ab6f1cdd4a6d/pyobjc_framework_coretext-12.1.tar.gz"
    sha256 "e0adb717738fae395dc645c9e8a10bb5f6a4277e73cba8fa2a57f3b518e71da5"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
    sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/f3/91/9c6ee907786a473bf81c5f53cf703ba0957b23ab84c264080fb5a450416f/pyparsing-3.3.2.tar.gz"
    sha256 "c777f4d763f140633dcb6d8a3eda953bf7a214dc4eff598413c070bcdc117cbc"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "qwen3-asr-mlx" do
    url "https://files.pythonhosted.org/packages/cf/cc/41da6f276b9d5d3d5602684ae72be95d78c5da88749497458f0521e581cf/qwen3_asr_mlx-0.1.0.tar.gz"
    sha256 "b9129b2ba7a60d3c0f462c8f82e9b4111ac7d8060f84032a43ba814799e0f426"
  end

  resource "rdflib" do
    url "https://files.pythonhosted.org/packages/98/f5/18bb77b7af9526add0c727a3b2048959847dc5fb030913e2918bf384fec3/rdflib-7.6.0.tar.gz"
    sha256 "6c831288d5e4a5a7ece85d0ccde9877d512a3d0f02d7c06455d00d6d0ea379df"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/8b/71/41455aa99a5a5ac1eaf311f5d8efd9ce6433c03ac1e0962de163350d0d97/regex-2026.2.28.tar.gz"
    sha256 "a729e47d418ea11d03469f321aaf67cdee8954cde3ff2cf8403ab87951ad10f2"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/79/30/5b1b6c28c105629cc12b33bdcbb0b11b5bb1880c6cfbd955f9e792921aa8/rfc3986-1.5.0.tar.gz"
    sha256 "270aaf10d87d0d4e095063c65bf3ddbc6ee3d0b226328ce21e036f946e421835"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/c6/f3b320c27991c46f43ee9d856302c70dc2d0fb2dba4842ff739d5f46b393/rich-14.3.3.tar.gz"
    sha256 "b8daa0b9e4eef54dd8cf7c86c03713f53241884e814f4e2f5fb342fe520f639b"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/20/af/3f2f423103f1113b36230496629986e0ef7e199d2aa8392452b484b38ced/rpds_py-0.30.0.tar.gz"
    sha256 "dd8ff7cf90014af0c0f787eea34794ebf6415242ee1d6fa91eaba725cc441e84"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/29/9c/6e74567782559a63bd040a236edca26fd71bc7ba88de2ef35d75df3bca5e/safetensors-0.7.0.tar.gz"
    sha256 "07663963b67e8bd9f0b8ad15bb9163606cd27cc5a1b96235a50d8369803b96b0"
  end

  resource "segments" do
    url "https://files.pythonhosted.org/packages/8b/57/85cac3a8e32370e88fa5fa92812edb6025db7fcbed51452bd56ee1524957/segments-2.4.0.tar.gz"
    sha256 "bba71f5520ddd54c8aa2f4d765a60618c6862162d6e7356a4a097f2223166f5b"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/bb/71/b6365e6325b3290e14957b2c3a804a529968c77a049b2ed40c095f749707/setuptools-79.0.1.tar.gz"
    sha256 "128ce7b8f33c3079fd1b067ecbb4051a66e8526e7b65f6cec075dfc650ddfa88"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smart_open" do
    url "https://files.pythonhosted.org/packages/e8/be/a66598b305763861a9ab15ff0f2fbc44e47b1ce7a776797337a4eef37c66/smart_open-7.5.1.tar.gz"
    sha256 "3f08e16827c4733699e6b2cc40328a3568f900cb12ad9a3ad233ba6c872d9fe7"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/2a/f9/2592608737553638fca98e21e54bfec40bf577bb98a61b2770c912aab25e/sounddevice-0.5.5.tar.gz"
    sha256 "22487b65198cb5bf2208755105b524f78ad173e5ab6b445bdab1c989f6698df3"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/e1/41/9b873a8c055582859b239be17902a85339bec6a30ad162f98c9b0288a2cc/soundfile-0.13.1.tar.gz"
    sha256 "b2c68dab1e30297317080a5b43df57e302584c49e2942defdde0acccc53f0e5b"
  end

  resource "spacy" do
    url "https://files.pythonhosted.org/packages/59/9f/424244b0e2656afc9ff82fb7a96931a47397bfce5ba382213827b198312a/spacy-3.8.11.tar.gz"
    sha256 "54e1e87b74a2f9ea807ffd606166bf29ac45e2bd81ff7f608eadc7b05787d90d"
  end

  resource "spacy-curated-transformers" do
    url "https://files.pythonhosted.org/packages/d8/b3/a4fd3cf28008cbe1d95463b5c76a0d9c8da7b9ad4f06289c2be4aae62052/spacy_curated_transformers-0.3.1.tar.gz"
    sha256 "7e53fccf64260e641b0a3f2b65b6d98381b86cef6eeb21ce279e8db849e8525d"
  end

  resource "spacy-legacy" do
    url "https://files.pythonhosted.org/packages/d9/79/91f9d7cc8db5642acad830dcc4b49ba65a7790152832c4eceb305e46d681/spacy-legacy-3.0.12.tar.gz"
    sha256 "b37d6e0c9b6e1d7ca1cf5bc7152ab64a4c4671f59c85adaf7a3fcb870357a774"
  end

  resource "spacy-loggers" do
    url "https://files.pythonhosted.org/packages/67/3d/926db774c9c98acf66cb4ed7faf6c377746f3e00b84b700d0868b95d0712/spacy-loggers-1.0.5.tar.gz"
    sha256 "d60b0bdbf915a60e516cc2e653baeff946f0cfc461b452d11a4d5458c6fe5f24"
  end

  resource "srsly" do
    url "https://files.pythonhosted.org/packages/cf/77/5633c4ba65e3421b72b5b4bd93aa328360b351b3a1e5bf3c90eb224668e5/srsly-2.5.2.tar.gz"
    sha256 "4092bc843c71b7595c6c90a0302a197858c5b9fe43067f62ae6a45bc3baa1c19"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
    sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/46/79/cf31d7a93a8fdc6aa0fbb665be84426a8c5a557d9240b6239e9e11e35fc5/termcolor-3.3.0.tar.gz"
    sha256 "348871ca648ec6a9a983a13ab626c0acce02f515b9e1983332b17af7979521c5"
  end

  resource "thinc" do
    url "https://files.pythonhosted.org/packages/2f/3a/2d0f0be132b9faaa6d56f04565ae122684273e4bf4eab8dee5f48dc00f68/thinc-8.3.10.tar.gz"
    sha256 "5a75109f4ee1c968fc055ce651a17cb44b23b000d9e95f04a4d047ab3cb3e34e"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/73/6f/f80cfef4a312e1fb34baf7d85c72d4411afde10978d4657f8cdd811d3ccc/tokenizers-0.22.2.tar.gz"
    sha256 "473b83b915e547aa366d1eee11806deaf419e17be16310ac0a14077f1e28f917"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/09/a9/6ba95a270c6f1fbcd8dac228323f2777d886cb206987444e4bce66338dd4/tqdm-4.67.3.tar.gz"
    sha256 "7d825f03f89244ef73f1d4ce193cb1774a8179fd96f31d7e1dcde62092b960bb"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/5a/b6/3e681d3b6bb22647509bdbfdd18055d5adc0dce5c5585359fa46ff805fdc/typer-0.24.0.tar.gz"
    sha256 "f9373dc4eff901350694f519f783c29b6d7a110fc0dcc11b1d7e353b85ca6504"
  end

  resource "typer-slim" do
    url "https://files.pythonhosted.org/packages/a7/a7/e6aecc4b4eb59598829a3b5076a93aff291b4fdaa2ded25efc4e1f4d219c/typer_slim-0.24.0.tar.gz"
    sha256 "f0ed36127183f52ae6ced2ecb2521789995992c521a46083bfcdbb652d22ad34"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "wasabi" do
    url "https://files.pythonhosted.org/packages/ac/f9/054e6e2f1062e963b5e746b48d1e3727470b2a490834d18ad92364929db3/wasabi-1.1.3.tar.gz"
    sha256 "4bb3008f003809db0c3e28b4daf20906ea871a2bb43f9914197d540f4f2e0878"
  end

  resource "weasel" do
    url "https://files.pythonhosted.org/packages/09/d7/edd9c24e60cf8e5de130aa2e8af3b01521f4d0216c371d01212f580d0d8e/weasel-0.4.3.tar.gz"
    sha256 "f293d6174398e8f478c78481e00c503ee4b82ea7a3e6d0d6a01e46a6b1396845"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/2e/64/925f213fdcbb9baeb1530449ac71a4d57fc361c053d06bf78d0c5c7cd80c/wrapt-2.1.2.tar.gz"
    sha256 "3996a67eecc2c68fd47b4e3c564405a5777367adfd9b8abb58387b63ee83b21e"
  end

  # Not published on PyPI; source from GitHub
  resource "apple-fm-sdk" do
    url "https://github.com/apple/python-apple-fm-sdk/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "2603c370b3d8868095c68fdbe2b07b2af83a9f6c3b67e3aa5c29523edb886be7"
  end

  def install
    virtualenv_install_with_resources

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
    quiet_system libexec/"bin/python", "-m", "spacy", "download", "en_core_web_sm"
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
