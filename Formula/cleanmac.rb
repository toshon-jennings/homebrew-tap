class Cleanmac < Formula
  desc "Lightweight developer cache cleanup utility for macOS"
  homepage "https://gist.github.com/toshon-jennings/2bf66e58aaee13c9e7a76640f70aff6e"
  url "https://gist.githubusercontent.com/toshon-jennings/2bf66e58aaee13c9e7a76640f70aff6e/raw/cleanmac"
  version "1.0.0"
  sha256 "3ae52b365f883448b109512f629ff8c4450e93cddfdbe7916cc7054bc00eebde"

  def install
    bin.install "cleanmac"
  end
end
