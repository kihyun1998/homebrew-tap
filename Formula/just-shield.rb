class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.0/just-shield-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2c7b7b0b2e3fe6647b31302b6d04792ccc9be4db4baf1ac1199bdd0751a4df8"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.0/just-shield-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "442876a14457a254fd6c6e89c095d4a7b32cbff33d2fa03e4e45dabf013a2129"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.0/just-shield-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a7a8d93a0d67a97d0706c08491db3e1a5daed505ddb86825c1ae87a450afee5"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.2.0/just-shield-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92bd05e09ef758c63fc2adde413e84874f2e8bf37903935067889c96746a837b"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
