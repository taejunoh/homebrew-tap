cask "security-scan-hub" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "8fed0d05f1c610cb618995488d22228869067b8de2287e26f860e6890b647451",
         intel: "c54f9fffca80f4d3fda1274ecef38051e71886d85f216c0704c686ace4952b5c"

  url "https://github.com/taejunoh/security-scan-hub/releases/download/desktop-v#{version}/sec-hub-desktop-#{version}-darwin-#{arch}-notarized-prerelease.zip"
  name "Security Scan Hub"
  desc "Scan projects with multiple security tools"
  homepage "https://github.com/taejunoh/security-scan-hub"

  depends_on macos: :ventura

  app "Security Scan Hub.app"
end
