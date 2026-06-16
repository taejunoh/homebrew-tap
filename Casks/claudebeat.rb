cask "claudebeat" do
  version "1.0.5"
  sha256 "24dea096220893cb145f40fd84adbadadf3dd86f3a8cfbc3d4be091cdb3a33c9"

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
