class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.5.9/chuch-term-macos-arm.tar.gz"
      sha256 "859145feba1ec55e5294e44b17792fe9a07f59c529ea54c130ddd5753b9a4af0"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.5.9/chuch-term-macos-intel.tar.gz"
      sha256 "2424b07eb5237c5d3d8e46ce19dcafb8b32d9b6648d54adf23027552299a6fdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.5.9/chuch-term-linux-x86_64.tar.gz"
      sha256 "d851c420e7beb255610e33a94542c400aa1e5d85f68a04ccdcf5d277bc660496"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
