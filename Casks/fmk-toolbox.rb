cask "fmk-toolbox" do
  version "0.1.12"
  sha256 "d2da915672ad2a187d23313e0296eba0ef0ba84d14802fcb74a026c4e025cbf2"

  url "https://github.com/toshon-jennings/forget-me-knot/releases/download/v#{version}/Forget-Me-Knot.ToolBox_#{version}_aarch64.dmg"
  name "Forget-Me-Knot ToolBox"
  desc "Lightweight macOS menubar app for managing daily tools and links"
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
