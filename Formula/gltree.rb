class Gltree < Formula
  desc "본문 첫 줄 Parent: #N 으로 부모를 적는 GitLab 트래커의 이슈 트리 CLI"
  homepage "https://github.com/kihyun1998/gltree"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.3.0/gltree-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4d09623faa53dce22ed7ea2500cfe04c5b0a799a13dcff42d8fbc10b5a723e6"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.3.0/gltree-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "969ca56900e9948b4dba6cf47629ae92670a477bb214f4b21fa806c8145789f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.3.0/gltree-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc27d90ca8573bcf49249a23773d8e748b5eb238c7a73112fb33d0afd2c433a2"
    end
    on_intel do
      url "https://github.com/kihyun1998/gltree/releases/download/v0.3.0/gltree-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30630299804c3f008202e22d428b4137bc8848d0d9b22b2d38854230b53af413"
    end
  end

  def install
    bin.install "gltree"
  end

  test do
    assert_match "gltree #{version}", shell_output("#{bin}/gltree --version")
  end
end
