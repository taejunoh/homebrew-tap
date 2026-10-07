cask "needlbar" do
  version "0.3.9"
  sha256 "fc0ce3a9bb7f01ba52b9054120b47539ea0a9176529767ed98b355f12b857047"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
