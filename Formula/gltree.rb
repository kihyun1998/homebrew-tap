class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.11.0/gltree-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1eb87fef2c56f37f584ff0b20460183e5e5f68b4d935f57f082e2d414e96b8d"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.11.0/gltree-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "697ef119117b2e6f4bb8cc0497d95e2266a7494ba65743eb0312db02eadc3e98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.11.0/gltree-v0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9774da9c81fe8272f7ac5d1a63f25754643e99e77f1d66069801e4ee65d637e3"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.11.0/gltree-v0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b80e31591e6e49efd59dd4b9b15b6956278f5d1c5fd09cdd72254cf5f572b54c"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
