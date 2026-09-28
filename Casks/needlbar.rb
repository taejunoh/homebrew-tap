cask "needlbar" do
  version "0.3.5"
  sha256 "0e39f6d5c7587369b549be316ef8ca703cacf7d0a77d4206bdaaf0f0c85ab992"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
