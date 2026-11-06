class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.5.0/gltree-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "678e968c05dd8a87f8e9f41bea6da4d2ea3d983247ba7f894e8441cddf381510"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.5.0/gltree-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "79a3ba60adbd5c3a4e824cf24ca6c5a9a9870fcc832b5f3c67a261773b746113"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.5.0/gltree-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b87bf96d215c07abf655957e7e91ea9f6936bbed0ef53fcb1a3d2bffcd03171"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.5.0/gltree-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "202fc46c43c0bb0a257339631cc1f76d2b612b210984b6c44f4b0cd4f52e2087"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
