class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.7.0/chuch-term-macos-arm.tar.gz"
      sha256 "25d73a8d25f5ed3c2635d38ec0b133cb25ff94d7b7013e2d1db04d5c82125d4a"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.7.0/chuch-term-macos-intel.tar.gz"
      sha256 "fe14292cbf26b22343c0480568fc62ca789976575abefb28066c2f08524686e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.7.0/chuch-term-linux-x86_64.tar.gz"
      sha256 "347617d73055b03626b63e6ea390bf0a50f2737cb5f44119ad5332a5737821ee"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
