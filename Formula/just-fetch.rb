class JustFetch < Formula
  desc "추적하는 폴더의 git 클론을 전부 fetch하고 upstream과의 상태를 보여준 뒤 고른 것만 fast-forward하는 CLI"
  homepage "https://github.com/kihyun1998/just-fetch"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.3.0/just-fetch-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca30a82dabe58ae1e809ad2ed1f116c15b02babc6fa1b2dbca2128aad845bf78"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.3.0/just-fetch-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "065d0728b42b762e8a7f58aa8cfb686671d004645a01a0d62c9f71a12c54f112"
    end
  end

  def install
    bin.install "just-fetch"
  end

  test do
    assert_match "just-fetch #{version}", shell_output("#{bin}/just-fetch --version")
  end
end
