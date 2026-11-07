# Homebrew Cask for AllyKeyboard — lives in umkasanki/homebrew-tap as
# Casks/allykeyboard.rb. The release workflow does NOT update it: after a
# release is published, set `version` and `sha256` (of the release .dmg) here
# by hand, then commit and push this tap.
#
# Install (users):
#   brew tap umkasanki/tap
#   brew trust umkasanki/tap        # third-party taps must be trusted once
#   brew install --cask allykeyboard
cask "allykeyboard" do
  version "1.5.0"
  sha256 "04dfe70dc3921c65277f8744cfe1cdc2436cc8d939e8a6b7f70d3288287027d0"

  url "https://github.com/umkasanki/ally-keyboard/releases/download/v#{version}/AllyKeyboard-#{version}.dmg"
  name "AllyKeyboard"
  desc "On-screen keyboard for head-tracker and pointer-only users"
  homepage "https://github.com/umkasanki/ally-keyboard"

  depends_on macos: :tahoe

  app "AllyKeyboard.app"

  # Self-signed, not notarized: without this Gatekeeper refuses the first launch.
  # It matters more here than elsewhere — the documented workaround is a command
  # typed into Terminal, and this is the application people install because
  # typing is what they cannot do.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/AllyKeyboard.app"]
  end

  uninstall quit: "com.umkasanki.AllyKeyboard"

  zap trash: "~/Library/Preferences/com.umkasanki.AllyKeyboard.plist"

  caveats <<~EOS
    AllyKeyboard needs Accessibility permission to type into other applications:
      System Settings → Privacy & Security → Accessibility → enable AllyKeyboard
  EOS
end
