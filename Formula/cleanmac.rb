class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://github.com/toshon-jennings/cleanmac"
  url "https://github.com/toshon-jennings/cleanmac/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "5564e5baedfb0593de1b94bed4c6b08d55105f6c9b47d8fe4f1651170b6641b2"
  license "MIT"

  head "https://github.com/toshon-jennings/cleanmac.git", branch: "main"

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "cleanmac"
  end

  test do
    system bin/"cleanmac", "--help"
  end
end
