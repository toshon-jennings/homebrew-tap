cask "oc-rig" do
  version "0.2.20"
  sha256 "d359340b72ec0f213a3a0bbf38317bcb13fc143eb9922735029aa15e01d0cf9b"

  url "https://github.com/toshon-jennings/opencode-rig/releases/download/v#{version}/opencode-desktop-mac-arm64.dmg"
  name "OpenCode Rig"
  desc "OpenCode fork with an integrated terminal and persistent usage dashboard"
  homepage "https://github.com/toshon-jennings/opencode-rig"

  depends_on macos: :monterey

  app "OpenCode Rig.app"

  zap trash: [
    "~/Library/Application Support/ai.opencode.desktop",
    "~/Library/Preferences/ai.opencode.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.desktop.savedState",
  ]
end
