class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.5/chuch-term-macos-arm.tar.gz"
      sha256 "cb3bda0f8aa9c2159042185992cc84cc016ab2aa95aaea3508ca97dd7e7b0964"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.5/chuch-term-macos-intel.tar.gz"
      sha256 "7d91cf6f366cb262ae0de6944cb30923d846900471a0fd9f7e8bb76c44307663"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.5/chuch-term-linux-x86_64.tar.gz"
      sha256 "acdc643b213102b4f69e6f71cef0a220eb2e011357ef24a07e58a6307887a29e"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
