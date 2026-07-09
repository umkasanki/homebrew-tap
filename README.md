# homebrew-tap

Homebrew tap for [AllyClicker](https://github.com/umkasanki/ally-clicker) — a native
macOS dwell-click tool for head-tracker and pointer-only users.

## Install

```bash
brew tap umkasanki/tap
brew trust umkasanki/tap          # third-party taps must be trusted once
brew install --cask allyclicker
```

AllyClicker is self-signed (not notarized), so clear the quarantine flag once:

```bash
xattr -dr com.apple.quarantine /Applications/AllyClicker.app
```

Then grant Accessibility:
**System Settings → Privacy & Security → Accessibility → enable AllyClicker.**
