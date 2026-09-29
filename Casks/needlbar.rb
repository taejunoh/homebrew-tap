cask "needlbar" do
  version "0.3.6"
  sha256 "e9fa5255918043622e0e4f386a0cceda9a4eb523bf10ac3b6b6f7120a949df79"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
