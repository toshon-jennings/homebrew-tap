class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://github.com/toshon-jennings/cleanmac"
  url "https://github.com/toshon-jennings/cleanmac/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "3be53ffe2c11de5e67509ddb6630afe5864350b8ff53f7e6ffc968d1549ea5a8"
  license "MIT"

  def install
    bin.install "cleanmac"
  end

  test do
    system "#{bin}/cleanmac", "--help"
  end
end
