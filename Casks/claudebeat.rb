cask "claudebeat" do
  version "1.0.0"
  sha256 "26dc05d7f7211ddb6f084687eb8ee842d4532894c33ea29aee277126bf0b2085"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "macOS menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: ">= :sonoma"

  app "ClaudeBeat.app"

  zap trash: [
    "~/Library/Preferences/com.claudebeat.macos.plist",
  ]
end
