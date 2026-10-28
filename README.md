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

## Codex Usage Reserve

[Codex Usage Reserve](https://github.com/taejunoh/codex-usage-reserve) manages a
reversible usage-reserve policy in Codex global instructions. The default policy
pauses ordinary work at 10% remaining and exempts actual scheduled runs.

Install on macOS or Linux, then activate the policy:

```sh
brew install taejunoh/tap/codex-usage-reserve
codex-usage-reserve enable
```

Update with `brew upgrade taejunoh/tap/codex-usage-reserve`. To remove the policy,
run `codex-usage-reserve disable` before uninstalling the executable with
`brew uninstall taejunoh/tap/codex-usage-reserve`.

This is an unofficial instruction policy, not an enforced account cap. See the
project README for supported usage tools, direct installers, and recovery.
