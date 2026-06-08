class Jtic < Formula
  desc "오늘 git 커밋에서 추가/삭제한 줄 수(+/-)를 한 줄로 보여주는 CLI"
  homepage "https://github.com/kihyun1998/just-tic"
  version "1.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.0/jtic-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7563c07b99b1d42e798ed57cb1daa047e1ade382ef3d1b510a4b36a9dbf59939"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.0/jtic-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f394e258857d9509f8ec27085cf1ede08fadc9d1a396b94c9ff26030351f8c04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.2.0/jtic-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8016d4719a00f6d108eda2a23b5615685e13363c665ea498fea1f6043eae7454"
    end
  end

  def install
    bin.install "jtic"
  end

  test do
    assert_match "jtic #{version}", shell_output("#{bin}/jtic --version")
  end
end
