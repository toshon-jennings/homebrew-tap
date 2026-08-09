cask "toolbox" do
  version "0.1.0"
  sha256 "c431ea15aec379b5ad7954dc2fad94960cea2fea811dadb50e42dc86c34b1243"

  url "https://github.com/toshon-jennings/forget-me-knot/releases/download/v#{version}/Forget-Me-Knot%20ToolBox_#{version}_aarch64.dmg"
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
