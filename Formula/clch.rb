class Clch < Formula
  desc "Find, track and safely clean developer caches and project artifacts"
  homepage "https://github.com/kihyun1998/clch"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/clch/releases/download/v0.1.1/clch-aarch64-apple-darwin.tar.gz"
      sha256 "dad6346360829dd93c35feb319e48bb0405c48b2437179768fab41d34b130f1c"
    end
    on_intel do
      url "https://github.com/kihyun1998/clch/releases/download/v0.1.1/clch-x86_64-apple-darwin.tar.gz"
      sha256 "58577610b858edc4772c577e2dd571596f873aa6062f75d33f5cedf1bc3e694d"
    end
  end

  def install
    bin.install "clch"
  end

  test do
    assert_match "clch #{version}", shell_output("#{bin}/clch --version")
  end
end
