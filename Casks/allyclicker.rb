cask "allyclicker" do
  version "0.1.1"
  sha256 "f0f7134ec12fb3c91916eea0b16bb47615f12bb7520c08b0b8252fbbcd762946"

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
