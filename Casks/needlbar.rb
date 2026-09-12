cask "needlbar" do
  version "0.3.1"
  sha256 "7e77884da7542cb05cdc15104a4f31e278f0ec8d771a21eca2fc4866d3e6203d"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Needlbar.app"
end
