cask "claudebeat" do
  version "1.1.0"
  sha256 "c91aa2448e6beeb1091a94cf127418355cf8e086756c9c2d6822e1043ad39ff6"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "Menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: :sonoma

  app "ClaudeBeat.app"

  zap trash: "~/Library/Preferences/com.claudebeat.macos.plist"
end
