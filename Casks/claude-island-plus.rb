cask "claude-island-plus" do
  version "2.0"
  sha256 "f6bd6ee0a653225e0e6c85a855c6daf4a59f8f627d896a67a58e14cca68a69d9"

  url "https://github.com/kud/claude-island-plus/releases/download/v#{version}/ClaudeIslandPlus-#{version}.dmg"
  name "Claude Island+"
  desc "macOS menu bar app for monitoring Claude CLI sessions in real time"
  homepage "https://github.com/kud/claude-island-plus"

  depends_on macos: ">= :sonoma"

  app "Claude Island Plus.app"

  zap trash: [
    "~/Library/Application Support/ClaudeIslandPlus",
    "~/Library/Preferences/io.kud.ClaudeIslandPlus.plist",
    "~/Library/Caches/io.kud.ClaudeIslandPlus",
  ]
end
