cask "needlbar" do
  version "0.3.7"
  sha256 "0dfd3365181a60fe5fd428020105c6c21d69bf72e4b1ba5d1885ebbde4660537"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
