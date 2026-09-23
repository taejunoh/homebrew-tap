cask "needlbar" do
  version "0.3.4"
  sha256 "1d5846bde7c256fb7f5673aec194ba6f29dfea63fb5cb5018a3f4027e49ddf29"

  url "https://github.com/taejunoh/needlbar/releases/download/v#{version}/Needlbar-macos-arm64.zip"
  name "Needlbar"
  desc "Menu-bar monitor for AI usage and system health"
  homepage "https://github.com/taejunoh/needlbar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Needlbar.app"
end
