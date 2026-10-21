cask "needlbar" do
  version "0.3.10"
  sha256 "40e8a3727e7eed2c7194188a9402a6c846f9aeef7243d688e47ea3e4cca8ee47"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
