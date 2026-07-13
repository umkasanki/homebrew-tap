cask "allyclicker" do
  version "0.1.2"
  sha256 "46a18545b9f50b8263c5286bd99896b55e81708409b3ee10ccb1896893b40dd2"

  url "https://github.com/umkasanki/ally-clicker/releases/download/v#{version}/AllyClicker-#{version}.dmg"
  name "AllyClicker"
  desc "Dwell-click accessibility tool for head-tracker and pointer-only users"
  homepage "https://github.com/umkasanki/ally-clicker"

  app "AllyClicker.app"

  caveats <<~EOS
    AllyClicker needs Accessibility permission to inject clicks:
      System Settings → Privacy & Security → Accessibility → enable AllyClicker

    It is not notarized. Clear the quarantine flag once so macOS lets it launch:
      xattr -dr com.apple.quarantine "/Applications/AllyClicker.app"
  EOS
end
