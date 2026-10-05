cask "needlbar" do
  version "0.3.8"
  sha256 "e2278209aaceeabe42cc8e21cdc4f8de24d6dadec1b8bfbdf5e08c50b7571102"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
