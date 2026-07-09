cask "allyclicker" do
  version "0.1.0"
  sha256 "625506941fb234d1b2e78e8e9afc1bfdbcd3e4cdd3a35d902667834392816986"

  url "https://github.com/umkasanki/ally-clicker/releases/download/v#{version}/AllyClicker-#{version}.dmg"
  name "AllyClicker"
  desc "Dwell-click accessibility tool for head-tracker and pointer-only users"
  homepage "https://github.com/umkasanki/ally-clicker"

  app "AllyClicker.app"

  caveats <<~EOS
    AllyClicker needs Accessibility permission to inject clicks:
      System Settings → Privacy & Security → Accessibility → enable AllyClicker

    It is not notarized. If macOS blocks it on first launch, either install with
      brew install --cask --no-quarantine allyclicker
    or clear the quarantine flag:
      xattr -dr com.apple.quarantine "/Applications/AllyClicker.app"
  EOS
end
