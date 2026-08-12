class OpenAnyway < Formula
  desc "Menu bar app that opens Gatekeeper-blocked macOS apps"
  homepage "https://github.com/toshon-jennings/open-anyway"
  url "https://github.com/toshon-jennings/open-anyway/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1aef0e8945b7db910fe29872c245c3aa27c76fbc286a10ffb0c92a0b52e62cc8"
  license "MIT"

  head "https://github.com/toshon-jennings/open-anyway.git", branch: "main"

  livecheck do
    url :stable
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  # Built here rather than shipped as a cask on purpose. A downloaded app is
  # quarantined, and an ad-hoc signed one is then blocked by Gatekeeper - you
  # would need Open Anyway to open Open Anyway. Compiling locally produces a
  # binary that was never downloaded, so it carries no quarantine attribute and
  # Gatekeeper never assesses it.
  def install
    system "./build.sh"
    prefix.install "build/Open Anyway.app"
  end

  def caveats
    <<~EOS
      Open Anyway is a menu bar app. Launch it with:
        open "#{opt_prefix}/Open Anyway.app"

      To keep it in /Applications:
        ln -s "#{opt_prefix}/Open Anyway.app" /Applications

      On first scan macOS asks for access to your Downloads and Desktop
      folders. Those are where downloaded apps land, so declining means
      blocked apps there are not reported.
    EOS
  end

  test do
    assert_path_exists prefix/"Open Anyway.app/Contents/MacOS/OpenAnyway"
    assert_match "com.toshonjennings.openanyway",
                 (prefix/"Open Anyway.app/Contents/Info.plist").read
  end
end
