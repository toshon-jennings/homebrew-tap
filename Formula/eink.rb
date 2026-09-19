class Eink < Formula
  desc "Lightweight, reversible E-Ink mode utility for macOS"
  homepage "https://github.com/toshon-jennings/eink-mode"
  url "https://github.com/toshon-jennings/eink-mode/releases/download/v0.1.0/eink-v0.1.0-macos.tar.gz"
  sha256 "fe34b7b0f336d0533f57fe2d9d88f73e91ebf0f111ad201da994953fd2cdf3ce"
  license "MIT"

  head "https://github.com/toshon-jennings/eink-mode.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    if build.head?
      system "swiftc", "-O", "src/main.swift", "-o", "bin/eink", "-framework", "Cocoa"
      bin.install "bin/eink"
    else
      bin.install "eink"
    end
    pkgshare.install "assets"
  end

  def caveats
    <<~EOS
      eink controls macOS appearance, accessibility filters, and wallpapers.

      To activate E-Ink mode:
        eink on

      To switch appearance:
        eink on dark
        eink on light

      To restore your previous macOS baseline:
        eink off
    EOS
  end

  test do
    output = shell_output("#{bin}/eink status")
    assert_match "E-INK MODE STATUS", output
  end
end
