cask "claudebeat" do
  version "1.0.6"
  sha256 "880fd1965557de7af9f181d9b5b259e15f4451b05accd97d543d93a3599bc715"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "Menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: :sonoma

  app "ClaudeBeat.app"

  zap trash: "~/Library/Preferences/com.claudebeat.macos.plist"
end
