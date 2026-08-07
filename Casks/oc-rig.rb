cask "oc-rig" do
  version "0.1.7"
  sha256 "76e83b30d58b4c4d18a4e8bbea1de72403dc367bd9b0e62f4ca5f013873d3fbe"

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
