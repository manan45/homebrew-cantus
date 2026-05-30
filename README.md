# homebrew-cantus

Homebrew tap for [Cantus](https://github.com/manan45/Cantus) — a Claude-first,
local-first desktop coding environment for macOS (Apple Silicon).

## Install

```sh
brew tap manan45/cantus
brew install --cask cantus
```

Or in one line, without tapping first:

```sh
brew install --cask manan45/cantus/cantus
```

## After installing

Cantus is not yet notarized, so on first launch macOS Gatekeeper will block it.
Clear the quarantine flag once:

```sh
xattr -dr com.apple.quarantine "/Applications/Cantus.app"
```

Cantus runs the Claude Code CLI inside its integrated terminal. Install it (and
sign in) before use:

```sh
npm install -g @anthropic-ai/claude-code
```

## Upgrade

```sh
brew upgrade --cask cantus
```

## Requirements

- macOS Ventura (13.0) or later
- Apple Silicon (arm64)

## Uninstall

```sh
brew uninstall --cask cantus      # remove the app
brew uninstall --zap --cask cantus # also remove app data
```
