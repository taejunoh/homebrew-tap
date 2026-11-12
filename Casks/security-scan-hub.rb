cask "security-scan-hub" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "c158cfb8f095d83c389b9835cded34c69a365cd8a33f990a517806aae714c279",
         intel: "959be970a02379fa182af889883332501c3bf8ee0fd70591c810fc9105138d17"

  url "https://github.com/taejunoh/security-scan-hub/releases/download/desktop-v#{version}/sec-hub-desktop-#{version}-darwin-#{arch}-notarized-prerelease.zip"
  name "Security Scan Hub"
  desc "Scan projects with multiple security tools"
  homepage "https://github.com/taejunoh/security-scan-hub"

  depends_on macos: :ventura

  app "Security Scan Hub.app"
end
