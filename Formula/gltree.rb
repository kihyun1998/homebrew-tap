class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.6.0/gltree-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "dbda401875e250d032b0b86eaffd0d91d590e76be68550005a267fbf0ac1fd1e"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.6.0/gltree-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f3fb14429b6c1b3dfa8695aa8774776a4018f1ad362eb6126f6a33148f92951e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.6.0/gltree-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "722323d7fd3029b5397d395effac71ab53d33fbbfa219e78790daadf16b1165a"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.6.0/gltree-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "739710c7759d7e238175c73c846533e85d2dde13df55bf7fa9496db78c8d3d87"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
