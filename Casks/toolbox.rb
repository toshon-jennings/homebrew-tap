cask "toolbox" do
  version "0.1.9"
  sha256 "696e20df5e4be66593ace6dfc538f0c131d1ae662b2d270ac8038da07aec6985"

  url "https://github.com/toshon-jennings/forget-me-knot/releases/download/v#{version}/Forget-Me-Knot.ToolBox_#{version}_aarch64.dmg"
  name "Forget-Me-Knot ToolBox"
  desc "Lightweight macOS menubar app for managing daily tools and links"
  homepage "https://github.com/toshon-jennings/forget-me-knot"

  app "Forget-Me-Knot ToolBox.app"

  zap trash: [
    "~/Library/Application Support/com.toolbox.app",
    "~/Library/Caches/com.toolbox.app",
    "~/Library/Preferences/com.toolbox.app.plist",
    "~/Library/WebKit/com.toolbox.app",
    "~/.toolbox"
  ]
end
