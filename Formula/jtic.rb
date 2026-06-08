class Jtic < Formula
  desc "오늘 git 커밋에서 추가/삭제한 줄 수(+/-)를 한 줄로 보여주는 CLI"
  homepage "https://github.com/kihyun1998/just-tic"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.1.0/jtic-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c90ae5cf7a5f4d60098cf6843d677240e476c1cb60fb36df53fc3cc58b07e68d"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.1.0/jtic-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b8c1d3dce4f8525dab74b4ab9360f008a9481268358b76454c18e4e1b126e8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.1.0/jtic-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3277a95d2feba7935743760ae5c28a4dd39fdd54dba9fefd805ceaf87279969d"
    end
  end

  def install
    bin.install "jtic"
  end

  test do
    assert_match "jtic #{version}", shell_output("#{bin}/jtic --version")
  end
end
