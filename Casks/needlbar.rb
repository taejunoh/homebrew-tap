cask "needlbar" do
  version "0.3.13"
  sha256 "848dea045d3f6772764c09c79440e0f026d7e347fbfe37df537b421024f0efa2"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
