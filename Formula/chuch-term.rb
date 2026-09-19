class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.1/chuch-term-macos-arm.tar.gz"
      sha256 "513e31466f3c7a532e58c366f2455d5cdfe2c157ad9fb4f344334480e338cb2e"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.1/chuch-term-macos-intel.tar.gz"
      sha256 "202f1957b51ade9f779b2486c5b1c020b8f0126da4999196da9423aa7afcf1e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.1/chuch-term-linux-x86_64.tar.gz"
      sha256 "c3062ac11ef0225694aece830c68cd5b9741cb51aed724b4e52663bb86b7d84d"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
