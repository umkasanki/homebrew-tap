cask "allyclicker" do
  version "0.2.2"
  sha256 "36612d2778fb062279d327e3fa3c34d1e34bd5e44545ab21c1ed792bb4147f0b"

  url "https://github.com/umkasanki/ally-clicker/releases/download/v#{version}/AllyClicker-#{version}.dmg"
  name "AllyClicker"
  desc "Dwell-click accessibility tool for head-tracker and pointer-only users"
  homepage "https://github.com/umkasanki/ally-clicker"

  depends_on macos: :sonoma

  app "AllyClicker.app"

  # Self-signed, not notarized: without this Gatekeeper refuses the first launch,
  # and for a dwell-clicker that refusal is a trap — the tool you need in order to
  # click is the one you cannot start without clicking.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/AllyClicker.app"]
  end

  uninstall quit: "com.allyclicker.app"

  zap trash: [
    "~/Library/Application Support/AllyClicker",
    "~/Library/Preferences/com.allyclicker.app.plist",
  ]

  caveats <<~EOS
    AllyClicker needs Accessibility permission to inject clicks:
      System Settings → Privacy & Security → Accessibility → enable AllyClicker
  EOS
end
