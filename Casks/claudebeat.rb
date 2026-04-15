cask "claudebeat" do
  version "1.0.0"
  sha256 "669de8b57314a0ec4700de9ec8dbd3117732ddecc4d1fe96da0a0d416a37fcb3"

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
