cask "needlbar" do
  version "0.3.12"
  sha256 "f352a0622492357cde078f943d8d9ca720ade4b09538db61bee0d38af49abcba"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
