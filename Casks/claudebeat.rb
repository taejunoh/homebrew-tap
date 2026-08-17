cask "claudebeat" do
  version "1.1.1"
  sha256 "7be33584ce40671a38ecafaf585725d4d92ea906abc4ce0884f24a309c032cdf"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "Menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: :sonoma

  app "ClaudeBeat.app"

  zap trash: "~/Library/Preferences/com.claudebeat.macos.plist"
end
