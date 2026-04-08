class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.3/chuch-term-macos-arm.tar.gz"
      sha256 "284916a850b28a84360772acf53c5159c76de0a7070a311fc7ac6c7ecc0dcdf4"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.3/chuch-term-macos-intel.tar.gz"
      sha256 "70f6777c3d352dbc3070935fb8ee417fa7123c3f39152f44753f322d9218106b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.3/chuch-term-linux-x86_64.tar.gz"
      sha256 "ca0582897835b844afe1adb3da0e820934fbdb1ad2e313aac3d0d7e2e87443c0"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
