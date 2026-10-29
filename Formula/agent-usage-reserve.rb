class AgentUsageReserve < Formula
  desc "Manage a local usage-reserve policy in Codex and Claude global instructions"
  homepage "https://github.com/taejunoh/agent-usage-reserve"
  url "https://github.com/taejunoh/agent-usage-reserve/releases/download/v0.2.0/agent-usage-reserve_0.2.0_darwin_arm64.tar.gz"
  sha256 "33c9991bc603e1e601a254ad38b4a189eeeda29c88be3d3e877d302bc4fde59d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taejunoh/agent-usage-reserve/releases/download/v0.2.0/agent-usage-reserve_0.2.0_darwin_arm64.tar.gz"
      sha256 "33c9991bc603e1e601a254ad38b4a189eeeda29c88be3d3e877d302bc4fde59d"
    end
    on_intel do
      url "https://github.com/taejunoh/agent-usage-reserve/releases/download/v0.2.0/agent-usage-reserve_0.2.0_darwin_amd64.tar.gz"
      sha256 "56f4c1ccd1975d7746aafe62495693049dd8c0f31a7924a4f1adab3f91cc7ca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taejunoh/agent-usage-reserve/releases/download/v0.2.0/agent-usage-reserve_0.2.0_linux_arm64.tar.gz"
      sha256 "18e6071c501c66137ac6ee7fda8e5db566418bd266a3cc4d759d93b4917599b4"
    end
    on_intel do
      url "https://github.com/taejunoh/agent-usage-reserve/releases/download/v0.2.0/agent-usage-reserve_0.2.0_linux_amd64.tar.gz"
      sha256 "14f1e47708609cf99a638be79f4054f7b74c75bd83ed5e29e0d3d8552839d677"
    end
  end

  def install
    bin.install "agent-usage-reserve"
  end

  def caveats
    <<~EOS
      Run agent-usage-reserve enable to activate the policy.
      Run agent-usage-reserve disable before uninstalling to remove it.
    EOS
  end

  test do
    ENV["CODEX_HOME"] = (testpath/"codex-home").to_s
    ENV["CLAUDE_CONFIG_DIR"] = (testpath/"claude-home").to_s
    (testpath/"codex-home").mkpath
    (testpath/"claude-home").mkpath
    system bin/"agent-usage-reserve", "enable", "--only", "all"
    system bin/"agent-usage-reserve", "status"
    system bin/"agent-usage-reserve", "disable"
  end
end
