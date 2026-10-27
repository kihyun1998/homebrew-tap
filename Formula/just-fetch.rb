class JustFetch < Formula
  desc "폴더 안의 git 클론을 전부 fetch하고 upstream과의 상태를 보여준 뒤 고른 것만 fast-forward하는 CLI"
  homepage "https://github.com/kihyun1998/just-fetch"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.1.0/just-fetch-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6cd11ac572093af20db9fcaf50e6a8c72933d0cb0fc0e5b6745bbcb69dbf7244"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-fetch/releases/download/v0.1.0/just-fetch-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a0207fb160d2448d36b1f19263f2d88f085156d0da72ab06677ab7b65192ce5e"
    end
  end

  def install
    bin.install "just-fetch"
  end

  test do
    assert_match "just-fetch #{version}", shell_output("#{bin}/just-fetch --version")
  end
end
