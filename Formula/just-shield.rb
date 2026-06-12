class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.2/just-shield-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "6fc28ad56a10929b50da9667137ec2a9262513aa77a036e8e71d1910d54723bf"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.2/just-shield-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "ce157b4b8ab0d0375ec8c7308e787805fe91558ba41f145c4a1f1bba3573d86c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.2/just-shield-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d151faee8cd6b73d16c3b59c2b33e6fd9a2f53fa6e1c232d4f85f26c5519378"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.2/just-shield-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7dfbcccb8057d4607d5669a462dbd9e07243b7868491d37c9a0cb892a54362bc"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
