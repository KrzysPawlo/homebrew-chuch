class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.8/chuch-term-macos-arm.tar.gz"
      sha256 "a0f5bf27c7c425cb59dd42d09f23ef77488a2838b4f379c06102d5f11f982522"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.8/chuch-term-macos-intel.tar.gz"
      sha256 "d366292d710a0a32f38f83ba6f3609d9e0d3b979a8aade3599bed5c3550111f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.8/chuch-term-linux-x86_64.tar.gz"
      sha256 "628c0d276277eadd84edf33ce6d02085a41d5684869d4ace631f1a88adec5f8a"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
