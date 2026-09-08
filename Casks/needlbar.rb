cask "needlbar" do
  version "0.3.0"
  sha256 "83949a1334cd49070ac2c33189b295c1f3949c5cd511dcf5faaf0f7f4f1f8ebc"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Needlbar.app"
end
