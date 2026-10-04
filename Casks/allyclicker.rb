cask "allyclicker" do
  version "0.2.0"
  sha256 "8a1770f32066049e01558878576111c27c6832994e8eaa670c965750122909a4"

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
