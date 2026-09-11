cask "izuna" do
  version "0.1.0"
  sha256 "4d7742ae16b7c25ba41d0d773904dcc52a996f6965541acce7ac042676858973"

  url "https://github.com/Watakumi/izuna/releases/download/v#{version}/izuna-#{version}.dmg"
  name "Izuna"
  desc "macOS app for using Claude Code together with your own Forgejo"
  homepage "https://github.com/Watakumi/izuna"

  depends_on arch: :arm64

  app "Izuna.app"

  # Unsigned (a person provides the certificate; docs/SETUP.md). macOS blocks it only the first time
  caveats <<~EOS
    Izuna is not signed with an Apple certificate, so macOS says "cannot verify the developer" the first time.
      macOS 15+: try to open it once, then System Settings -> Privacy & Security -> "Open Anyway" at the bottom.
      Or from a terminal:  xattr -dr com.apple.quarantine "#{appdir}/Izuna.app"
    You need Claude Code (logged in), your own Forgejo, and gh. The app's setup screen checks them.
      https://github.com/Watakumi/izuna/blob/main/docs/SETUP.md
  EOS

  zap trash: "~/Library/Application Support/izuna"
end
