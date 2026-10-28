class CodexUsageReserve < Formula
  desc "Manage a local usage-reserve policy in Codex global instructions"
  homepage "https://github.com/taejunoh/codex-usage-reserve"
  url "https://github.com/taejunoh/codex-usage-reserve/releases/download/v0.1.0/codex-usage-reserve_0.1.0_darwin_arm64.tar.gz"
  version "0.1.0"
  license "MIT"
  sha256 "65f58820ab1d2f61bf386eb779e2a5e26c081c89b13e02dc6ee7bf8eb0529da0"

  on_macos do
    on_arm do
      url "https://github.com/taejunoh/codex-usage-reserve/releases/download/v0.1.0/codex-usage-reserve_0.1.0_darwin_arm64.tar.gz"
      sha256 "65f58820ab1d2f61bf386eb779e2a5e26c081c89b13e02dc6ee7bf8eb0529da0"
    end
    on_intel do
      url "https://github.com/taejunoh/codex-usage-reserve/releases/download/v0.1.0/codex-usage-reserve_0.1.0_darwin_amd64.tar.gz"
      sha256 "75f79ac942e49a7f18e2c850d62d547ea4708f1e054641cbc6c27375d0bce772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taejunoh/codex-usage-reserve/releases/download/v0.1.0/codex-usage-reserve_0.1.0_linux_arm64.tar.gz"
      sha256 "87ea57f1ca0d79ac152bc4bac4556df83f5fe453e4931d86ccb39aa23036c48e"
    end
    on_intel do
      url "https://github.com/taejunoh/codex-usage-reserve/releases/download/v0.1.0/codex-usage-reserve_0.1.0_linux_amd64.tar.gz"
      sha256 "625d0102599017875d4b950105897a38196685060cc2419472f04d6e43dfad51"
    end
  end

  def install
    bin.install "codex-usage-reserve"
  end

  test do
    ENV["CODEX_HOME"] = (testpath/"codex-home").to_s
    system bin/"codex-usage-reserve", "enable"
    system bin/"codex-usage-reserve", "status"
    system bin/"codex-usage-reserve", "disable"
  end

  def caveats
    "Run codex-usage-reserve enable to activate the policy. Run codex-usage-reserve disable before uninstalling to remove it."
  end
end
