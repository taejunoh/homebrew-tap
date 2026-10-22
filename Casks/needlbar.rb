cask "needlbar" do
  version "0.3.11"
  sha256 "1d4f2adb595a786a9ee916edcd36ca49eda5c5e439d57baf65f8f1e3eebb1e99"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
