cask "toolbox" do
  version "0.1.0"
  sha256 "97d4fd53c3e0afd4dd71dc0bcd480a0922389ea9f8529dad86450dd680f68a56"

  url "https://github.com/toshon-jennings/forget-me-knot/releases/download/v#{version}/ToolBox_#{version}_aarch64.dmg"
  name "ToolBox"
  desc "Lightweight macOS menubar app for managing daily tools and links"
  homepage "https://github.com/toshon-jennings/forget-me-knot"

  app "ToolBox.app"

  zap trash: [
    "~/Library/Application Support/com.toolbox.app",
    "~/Library/Caches/com.toolbox.app",
    "~/Library/Preferences/com.toolbox.app.plist",
    "~/Library/WebKit/com.toolbox.app",
    "~/.toolbox"
  ]
end
