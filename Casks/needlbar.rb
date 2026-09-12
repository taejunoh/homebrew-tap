cask "needlbar" do
  version "0.3.2"
  sha256 "3db2e6bb7aadf7eb1bb26de29139b95073a866428d706f4fc08b6314e4b741c3"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Needlbar.app"
end
