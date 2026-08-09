cask "toolbox" do
  version "0.1.5"
  sha256 "b6b4866b2e2ef1e422e7b06bf31c62efad88637992ee787cba9e945b50296fcc"

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
