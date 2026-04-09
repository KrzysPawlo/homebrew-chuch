class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.6/chuch-term-macos-arm.tar.gz"
      sha256 "0ec4f4fb6fcd1a78dfb7f030dfb51d921105265485b46a2e6e051d334e79a0e3"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.6/chuch-term-macos-intel.tar.gz"
      sha256 "c289d53b962c2c02c4c591f9e6b522182f2da3b9e082db2a022429bf539d551a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.6/chuch-term-linux-x86_64.tar.gz"
      sha256 "c982bd87ffa3d7dedd40e1b0a97e6b754e48d2b3364504bd97d0ef724e4e5cf0"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
