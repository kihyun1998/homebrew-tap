class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.7.0/gltree-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e52341e1e7e8893b5512b803a75334aa533cd34b99f8601692b3f58704e81ba"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.7.0/gltree-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "373f93cf6bb18eee224ac57ae53645f78e5b1150b4ce8a005deda7e40307f3be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.7.0/gltree-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76dff20ed0b5847d4d4f5d67f1fdc05f465794da39be2587893f20a741cade79"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.7.0/gltree-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad83d1683aebf393c1314b8f664aab5d167e3f8976b52d7c4019825579951178"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
