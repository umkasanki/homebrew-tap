cask "allyclicker" do
  version "0.2.8"
  sha256 "470d256a915ca70c7e0611f995629fd93be2f2444a528e9c8a48430dda92b640"

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
