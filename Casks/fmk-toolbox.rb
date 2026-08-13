cask "fmk-toolbox" do
  version "0.1.13"
  sha256 "1bf61b59584b26ad3a4b4857ba00cd89df7c20b9428a924dca86d4cb1f6bc23c"

  url "https://github.com/toshon-jennings/forget-me-knot/releases/download/v#{version}/Forget-Me-Knot.ToolBox_#{version}_aarch64.dmg"
  name "Forget-Me-Knot ToolBox"
  desc "Lightweight menubar app for managing daily tools and links"
  homepage "https://github.com/toshon-jennings/forget-me-knot"

  depends_on :macos

  app "Forget-Me-Knot ToolBox.app"

  zap trash: [
    "~/.toolbox",
    "~/Library/Application Support/com.toolbox.app",
    "~/Library/Caches/com.toolbox.app",
    "~/Library/Preferences/com.toolbox.app.plist",
    "~/Library/WebKit/com.toolbox.app",
  ]

  # Ad-hoc signed rather than notarized, so Gatekeeper shows an "unverified
  # developer" prompt on first launch. Homebrew quarantines casks by default.
  caveats <<~EOS
    On first launch macOS will say it cannot verify the developer.
    Right-click the app in /Applications and choose Open, then confirm.
    You only need to do this once.
  EOS
end
