cask "needlbar" do
  version "0.3.3"
  sha256 "79ac52b74972e51eac9c603f62cc6dc8b695a11b333ea92ecbe43e17a7ff7f0f"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
