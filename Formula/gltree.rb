class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.10.0/gltree-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "c7690d100e82e6f9bd70a01697b9dd617b65a470d196ccc1ec942084e9e14071"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.10.0/gltree-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "860ab9c98ebe4c46f5155bcc8e912a8b9448877a62372a33f868a5d2cee1bcbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.10.0/gltree-v0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a87fc44437ec81ab5f9ccace8cefc6496d4e824abdd605cfefcc59b15c5ea11d"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.10.0/gltree-v0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0a7bc179ea62a1c585028b699dc6def0dd919e98c5aede14c386e8fc23b4b12"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
