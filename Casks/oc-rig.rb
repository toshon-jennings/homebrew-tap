cask "oc-rig" do
  version "0.1.7"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/toshon-jennings/opencode-rig/releases/download/v#{version}/opencode-desktop-mac-arm64.dmg"
  name "OpenCode Rig"
  desc "Community fork of the AI coding agent with a persistent usage dashboard and integrated terminal"
  homepage "https://github.com/toshon-jennings/opencode-rig"

  app "OpenCode Rig.app"

  zap trash: [
    "~/Library/Application Support/ai.opencode.desktop",
    "~/Library/Preferences/ai.opencode.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.desktop.savedState",
  ]
end
