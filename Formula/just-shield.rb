class JustShield < Formula
  desc "GitHub Actions 워크플로가 받아 쓰는 액션을 실행 전에 검사하는 공급망 스캐너"
  homepage "https://github.com/kihyun1998/just-shield"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.1/just-shield-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f8790659c2da0a924eb60d23104347a5827afa9689d8e6c007a6c05e00391626"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.1/just-shield-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "9ed20def38d90a11e11f7be4c38aa833a96442325926dd26a6f83f4ca83e7553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.1/just-shield-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "367a07e461882eea6edb1194c790ca9913154e4a456a962d4dd59952ab550dd1"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-shield/releases/download/v0.1.1/just-shield-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74f19617d2797b37b7b92555d841055a756dbf6b2d3b5c794d3b19b7fd87923e"
    end
  end

  def install
    bin.install "just-shield"
  end

  test do
    system bin/"just-shield", "scan", testpath.to_s
  end
end
