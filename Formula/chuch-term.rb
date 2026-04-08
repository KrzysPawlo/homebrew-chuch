class ChuchTerm < Formula
  desc "Fast, minimal terminal text editor"
  homepage "https://github.com/KrzysPawlo/chuch-term"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-macos-arm.tar.gz"
      sha256 "eb95d482f9c0787e6b00103bc346d351ada75b976163e5f63bdbc6a8af6514e6"
    end

    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-macos-intel.tar.gz"
      sha256 "5253ad704281c1ae9c3844ef9451f1854317ccfb66dc33f7544b49410756a3cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KrzysPawlo/chuch-term/releases/download/v0.6.0/chuch-term-linux-x86_64.tar.gz"
      sha256 "78278f9221831e9808f1b8ba61b14496405e55c495aa2c0cd9fe4d05c1cea8b6"
    end
  end

  def install
    bin.install "chuch-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chuch-term --version")
  end
end
