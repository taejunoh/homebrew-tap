# homebrew-tap

Homebrew tap for **[ClaudeBeat](https://claudebeat.com)** — a macOS menu bar app
that monitors Claude AI token usage in real-time.

## Install

```sh
brew install --cask taejunoh/tap/claudebeat
```

That single command taps this repository automatically — no separate
`brew tap` step is needed.

## Update

```sh
brew upgrade --cask claudebeat
```

## Uninstall

```sh
brew uninstall --cask claudebeat
```

To also remove leftover preferences:

```sh
brew uninstall --zap --cask claudebeat
```

## Requirements

- macOS Sonoma (14) or later

## Links

- Website — https://claudebeat.com
- App source — https://github.com/taejunoh/ClaudeBeat

## Agent Usage Reserve

[Agent Usage Reserve](https://github.com/taejunoh/agent-usage-reserve) manages a
reversible usage-reserve policy in Codex and Claude global instructions. The
default policy pauses ordinary work at 10% remaining and exempts actual
scheduled runs.

Install on macOS or Linux, then activate the policy:

```sh
brew install taejunoh/tap/agent-usage-reserve
agent-usage-reserve enable
```

Update with `brew upgrade taejunoh/tap/agent-usage-reserve`. To remove the policy,
run `agent-usage-reserve disable` before uninstalling the executable with
`brew uninstall taejunoh/tap/agent-usage-reserve`.

Existing `codex-usage-reserve` installs move to the new name on `brew upgrade`.

This is an unofficial instruction policy, not an enforced account cap. See the
project README for supported usage tools, direct installers, and recovery.
