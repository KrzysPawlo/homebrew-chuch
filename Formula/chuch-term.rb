class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.0/chuch-term-macos-arm.tar.gz"
      sha256 "7af40ce43859e59243c70f4afd134968c96f85e8072a7ab9929801bf9958daf7"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.0/chuch-term-macos-intel.tar.gz"
      sha256 "0aa4c8eb4edd7842af31edc88cf217d2ebd865392fc53c1c7498165d35d3fa98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.8.0/chuch-term-linux-x86_64.tar.gz"
      sha256 "51105b4246916c084917054107c9f743b1a863b97ffc6c34f0bc1ec70c8882b0"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
