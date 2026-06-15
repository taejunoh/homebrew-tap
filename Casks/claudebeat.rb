cask "claudebeat" do
  version "1.0.3"
  sha256 "1705c9d54532f206e29526781a1ac2654de109423f40ee3b9b4464e809b0ae5a"

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
