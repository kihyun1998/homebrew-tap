class Jtic < Formula
  desc "오늘 git 커밋에서 추가/삭제한 줄 수(+/-)를 한 줄로 보여주는 CLI"
  homepage "https://github.com/kihyun1998/just-tic"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.0.0/jtic-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "8a9fe89416b93bee6d674edce089cbe33590f83d85d7499bc39b90f00766ca9f"
    end
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.0.0/jtic-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "b384416af432ccce365885351eaab8dec289b19b0c07bb9291e07f6df965115c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kihyun1998/just-tic/releases/download/v1.0.0/jtic-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "511244a3a05106f72c94bcf6d541764b5d76c5676ca9ac3dbc997244febadb6c"
    end
  end

  def install
    bin.install "jtic"
  end

  test do
    assert_match "jtic #{version}", shell_output("#{bin}/jtic --version")
  end
end
