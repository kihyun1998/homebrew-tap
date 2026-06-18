class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.3.0/just-shield-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "3fdc2389cbf3f03827094187d4a0c80440151e14b3b503e1a105f350270c90d1"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.3.0/just-shield-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c775ea2ce27baa8394196f190795f65f084d41dc0c16e19b30af833b32ac2338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.3.0/just-shield-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03e39b6c384b2389ec4058bb4964d69fe7a335b7b34ee9b7e81adc105bf059c9"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.3.0/just-shield-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0e475b8ab51ac7fffc0e1ed28a0cf17d946402bcd3b8b269ef5d7c120f55397"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
