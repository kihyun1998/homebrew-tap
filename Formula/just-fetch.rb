class JustFetch < Formula
  desc "폴더 안의 git 클론을 전부 fetch하고 upstream과의 상태를 보여준 뒤 고른 것만 fast-forward하는 CLI"
  homepage "https://github.com/kihyun1998/just-fetch"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.2.0/just-fetch-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d71b4b5abc1444743682d44ed722399b40a11b2d04c6a7cb7d721abe411537c6"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.2.0/just-fetch-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4aafadb7a0d3f4223e9f2ab048dc6a4c4972ab9d9465634529190b186a61ea28"
    end
  end

  def install
    bin.install "just-fetch"
  end

  test do
    assert_match "just-fetch #{version}", shell_output("#{bin}/just-fetch --version")
  end
end
