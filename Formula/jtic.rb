class Jtic < Formula
  desc "오늘 git 커밋에서 추가/삭제한 줄 수(+/-)를 한 줄로 보여주는 CLI"
  homepage "https://github.com/kihyun1998/just-tic"
  version "1.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.1/jtic-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "dbe0da281f6884a64e31c1fc6a8ead5f89247e8c2f1fdf8ccc02fd4e498e3a1e"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.1/jtic-v1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "cb5f0b708c4b68cd5f3a9b1468061ffeb5e30aaf09800319fabc891ef7512fbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.1/jtic-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c155d808e5b133464588b445bc735136676b6ee66d786c1484e293a3e4c7c88e"
    end
  end

  def install
    bin.install "jtic"
  end

  test do
    assert_match "jtic #{version}", shell_output("#{bin}/jtic --version")
  end
end
