class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://github.com/toshon-jennings/cleanmac"
  url "https://github.com/toshon-jennings/cleanmac/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "94996e5b80a2f4f7b887590ca5ebd22554717f5b0d9a18a2f9d45cd72448a65b"
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
