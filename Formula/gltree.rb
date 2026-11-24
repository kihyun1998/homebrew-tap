class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.8.0/gltree-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "c659b6d34222eaa9d67a72bb0874ea7dd6d88e41c0bca52f33107142e39d54e6"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.8.0/gltree-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fe858794cbf11184e7c50f793b747fbec4fa4e37ef3fff55316d6156067fe54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.8.0/gltree-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70de798855fe9be509a263ea575f8d783abffac5ce044da67d969818704899fd"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.8.0/gltree-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb09a758e15c88ca657eb710ce98032a758b70ab9953d6157bc06622ac65f29d"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
