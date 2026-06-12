class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.1/just-shield-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ff58ad04a37621b07500db71d46799aebd7dc773c7beb8ec9fd3afa07a32fd37"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.1/just-shield-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "815a3454bfd0eca9248041b3b2d7de3a60ce89a6de6108a4a40b6db5c21e9d3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.1/just-shield-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6324785a4e53ae7e59d3d784132cb65d9cccf38d2b754adcfb5f351345581073"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.1/just-shield-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb593fbc9380dfde8510db7deb17a61a7b8b8e0775e890afc791fd4d76f40471"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
