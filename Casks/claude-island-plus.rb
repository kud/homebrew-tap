cask "claude-island-plus" do
  version "2.0"
  sha256 :no_check

  url "https://github.com/kud/claude-island-plus/releases/download/v#{version}/ClaudeIslandPlus-#{version}.dmg"
  name "Claude Island+"
  desc "macOS menu bar app for monitoring Claude CLI sessions in real time"
  homepage "https://github.com/kud/claude-island-plus"

  depends_on macos: ">= :sonoma"

  app "Claude Island+.app"

  zap trash: [
    "~/Library/Application Support/ClaudeIslandPlus",
    "~/Library/Preferences/io.kud.ClaudeIslandPlus.plist",
    "~/Library/Caches/io.kud.ClaudeIslandPlus",
  ]
end
