class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://github.com/toshon-jennings/cleanmac"
  url "https://github.com/toshon-jennings/cleanmac/archive/refs/tags/v1.2.0.tar.gz"
  version "1.2.0"
  sha256 "d172f518b544633b570c80bceabb7b84689e88eefe32a0fda9f9cd569aa354f9"
  license "MIT"

  def install
    bin.install "cleanmac"
  end

  test do
    system "#{bin}/cleanmac", "--help"
  end
end
