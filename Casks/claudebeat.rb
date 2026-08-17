cask "claudebeat" do
  version "1.0.7"
  sha256 "1b13da5a8a6dca56da36090d1ad069bba9a97a781f0866e566a2796bc5ec464b"

  url "https://github.com/taejunoh/ClaudeBeat/releases/download/v#{version}/ClaudeBeat.zip"
  name "ClaudeBeat"
  desc "Menu bar app that monitors Claude AI token usage in real-time"
  homepage "https://claudebeat.com/"

  depends_on macos: :sonoma

  app "ClaudeBeat.app"

  zap trash: "~/Library/Preferences/com.claudebeat.macos.plist"
end
