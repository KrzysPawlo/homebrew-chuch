class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.1/chuch-term-macos-arm.tar.gz"
      sha256 "4309a36566ae6ada6fb2a0d6f81d62bdbe4a851758dbbe2c7428ef0933032193"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.1/chuch-term-macos-intel.tar.gz"
      sha256 "f82fb3369d0c15c6b7ef13dbc0d448ef9bd3b4065479fc3c1387bc20e41b90ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.1/chuch-term-linux-x86_64.tar.gz"
      sha256 "8201875d51d85410cb00259b3e79d5a072e3e0cff7327ba91b3342e5e954d465"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
