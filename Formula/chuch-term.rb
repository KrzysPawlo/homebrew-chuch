class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-macos-arm.tar.gz"
      sha256 "1044fc64c513c0ecd84d479d998e6bde6a6b8e4fe64f293003d8a98a02c85b1d"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-macos-intel.tar.gz"
      sha256 "ec2770e9e860ff43198b43630294160fe97adf68e062e5d86a80dee1a2b758c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-linux-x86_64.tar.gz"
      sha256 "72ea6f0c7b358d45d588e43d0ea435d8e9fd374862f31028e919a3d8ae98422e"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
