cask "security-scan-hub" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "1aa6c5f3fe48bd0451020aa753298ce81dcb8061fc7a3d836448ef2b87fec3ec",
         intel: "0c6fa989dfeade6411fb4f64400512eb3b6e20a134283786b03b55b8d796d761"

  url "https://github.com/taejunoh/security-scan-hub/releases/download/desktop-v#{version}/sec-hub-desktop-#{version}-darwin-#{arch}-notarized-prerelease.zip"
  name "Security Scan Hub"
  desc "Scan projects with multiple security tools"
  homepage "https://github.com/taejunoh/security-scan-hub"

  depends_on macos: :ventura

  app "Security Scan Hub.app"
end
