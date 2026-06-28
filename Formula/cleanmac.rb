class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://github.com/toshon-jennings/cleanmac"
  url "https://github.com/toshon-jennings/cleanmac/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "2f7a10039a5991de93a40a217a3c6bbf268adf15b9b54fc65540971b9dea2ee6"
  license "MIT"

  def install
    bin.install "cleanmac"
  end

  test do
    system "#{bin}/cleanmac", "--help"
  end
end
