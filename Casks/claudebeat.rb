cask "claudebeat" do
  version "1.1.2"
  sha256 "e3ade05d106e8d8e2ac5ea21565f8d2f639dfd913fb0434b847870d5f3fb3e6e"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "Menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: :sonoma

  app "ClaudeBeat.app"

  zap trash: "~/Library/Preferences/com.claudebeat.macos.plist"
end
