cask "claudebeat" do
  version "1.0.2"
  sha256 "fbb0c5ad7f355c92a8a8e11af102439c239f3bbdb5c21879fa784f15890e3378"

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
