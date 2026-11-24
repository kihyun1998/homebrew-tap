class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.9.0/gltree-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "33fc74cf50dd2a85d1191efcb74b42435196a783808911b0e012cbd3989cd743"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.9.0/gltree-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1087b31e2a109050bff7d28182f1feae87c5554630e31f85587cb6da1701920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.9.0/gltree-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68810f1173cf46c5842646314b32be226db1f51209c74fb6fbe3715db743f19c"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.9.0/gltree-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c655acf1f789b4ff598f2c2429e5b26a8d25c3a552880e0a93960240bf423dc"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
