class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.7/chuch-term-macos-arm.tar.gz"
      sha256 "7c9a6e2814c5bae559f2e5948d43fe96e3bd4af6f1f3f9d97a79839a474583b3"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.7/chuch-term-macos-intel.tar.gz"
      sha256 "d2fd3e5d18a75cbdc336b34f6eb9cf7c99cc0d99cc0187fd5eaa36498e31f63c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.7/chuch-term-linux-x86_64.tar.gz"
      sha256 "7c671dd6abecb0bf0722518017e5c8b3a91a96e074d46a1a21a19c9a1415df57"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
