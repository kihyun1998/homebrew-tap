class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.2.0/gltree-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a32b0d37fa7b4f4a62f5afd9d2987af3b5866329d80e4c09123b1cf41774e23"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.2.0/gltree-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cad0cf14f5d1a8dfcaa92eaa92fa17ea3733d3b6a8ee631bdd1858eff54deeb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.2.0/gltree-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "622a15edc427141fc79326f439f2374721dbe956b4699d10c6416424ff60b1dc"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.2.0/gltree-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63a50b3d34c45fa0b722447b9fbcd88c05f7cbb003f38941c95ee527e5083a43"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
