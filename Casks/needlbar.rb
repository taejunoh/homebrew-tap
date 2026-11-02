cask "needlbar" do
  version "0.3.14"
  sha256 "801f00ca5984be261ee0142b18c22a7e81d2b1f4bbab0794b4f5d91d888ec100"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
