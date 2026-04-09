cask "claudetokenusage" do
  version "1.0.0"
  sha256 "2f2a62f659cee0b8f7ca51b6e7351d5dd210fa54ac7d36c9d89289d8ae082ac6"

  url "https://github.com/taejunoh/ClaudeTokenUsage/releases/download/v#{version}/ClaudeTokenUsage.zip"
  name "Claude Token Usage"
  desc "macOS menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://taejunoh.com/ClaudeTokenUsage/"

  depends_on macos: ">= :sonoma"

  app "ClaudeTokenUsage.app"

  zap trash: [
    "~/Library/Preferences/com.claudetokenusage.macos.plist",
  ]
end
