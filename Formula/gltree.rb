class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.4.0/gltree-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad6656f4028bb6b8862456ebd02b2f6e2166a906af3a801cc43f366df0fa0cde"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.4.0/gltree-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8d476c0d6059ae88a2b7975e9df06c2b5aaef4fd5532d4b3afc234399429b56a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.4.0/gltree-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc7650319816375afa6f8a8b6fccc91c012f0f59b0ae41f0f688dc19d632e14e"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.4.0/gltree-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bd4caf07708a976fe6a78c54654abe746177c3c124f881d215bd4cf4ceac568"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
