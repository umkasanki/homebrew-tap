# homebrew-tap

Homebrew tap for [AllyClicker](https://github.com/umkasanki/ally-clicker) — a native
macOS dwell-click tool for head-tracker and pointer-only users.

## Install

```bash
brew tap umkasanki/tap
brew install --cask --no-quarantine allyclicker
```

`--no-quarantine` is needed because AllyClicker is self-signed (not notarized).

After install, grant Accessibility:
**System Settings → Privacy & Security → Accessibility → enable AllyClicker.**
