class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.1.0/gltree-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d34c51f3705d24e90690058ec7c72f5ce864a64d81897ee39949ee8fe571a1d6"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.1.0/gltree-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "821885a40a6b32507826f0222e062d81a68a7b79501d121e6a9645fb6e19b3c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.1.0/gltree-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1220ae07b1ccdaab1ff499d21c77b4a4dad705bfd4891e68e548f001e41b4a8a"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.1.0/gltree-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f45d427d9d3596106d22d255cc25f81c4d6415393702fe30972bfde2be1bc01"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
