class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.2/chuch-term-macos-arm.tar.gz"
      sha256 "f1d72ac5b80a5f3be03f4e496eac22904ae15353fe01bf4137c0102c6314180d"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.2/chuch-term-macos-intel.tar.gz"
      sha256 "f40f264d04dba5072aed40a3585662958dde1fd07dc7af6a46df0059569b479e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.2/chuch-term-linux-x86_64.tar.gz"
      sha256 "6eade2ad7be83ef73558ce0f1ffe57521e74a44dabb25b2fa3349568029c82bc"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
