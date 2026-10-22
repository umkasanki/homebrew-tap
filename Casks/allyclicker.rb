cask "allyclicker" do
  version "0.2.1"
  sha256 "ef6d7e9fdb01128af4122cb04a790efa7b853d3113e70f219673c509dede1a55"

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
