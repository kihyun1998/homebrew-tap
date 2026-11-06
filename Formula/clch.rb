class Clch < Formula
  desc "Find, track and safely clean developer caches and project artifacts"
  homepage "https://github.com/kihyun1998/clch"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kihyun1998/clch/releases/download/v0.1.0/clch-aarch64-apple-darwin.tar.gz"
      sha256 "d8121f1a0f0cff1e5e653a66179430680b4c07cc514f9e8610fc599cf2fe1912"
    end
    on_intel do
      url "https://github.com/kihyun1998/clch/releases/download/v0.1.0/clch-x86_64-apple-darwin.tar.gz"
      sha256 "8a0e21be26eb491e1c91da9cc3e91a3fa682c40d33eb1b490341b49cda9c608e"
    end
  end

  def install
    bin.install "clch"
  end

  test do
    assert_match "clch #{version}", shell_output("#{bin}/clch --version")
  end
end
