class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.4/just-shield-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "5bdf1f54950c193507a02ed9398fe57851826090c2999f19e1ed77fc40ae2532"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.4/just-shield-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "f9f46e6e71dd4a5040b737efa157e7a0227518d0ce7d9e5019b78de9ec1362c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.4/just-shield-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9aec6fe914169ac45a25ab0d53ef16beb29f32663402e585f3c0216da6a4e110"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.4/just-shield-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42ca17aa92b0711a3662c404edc13195675f5405f140fa281fc4690ca9f135fe"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
