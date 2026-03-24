cask "corgibreak" do
  version "1.0.4"
  sha256 "0b3d2be237255c894b996dcfcb02611ae248f14ab5fac14551893de45ec4b3fd"

  url "https://github.com/VolodymyrM27/CorgiBreak/releases/download/v#{version}/CorgiBreak.zip"
  name "CorgiBreak"
  desc "Menu bar app for the 20-20-20 eye care rule with an animated pixel corgi"
  homepage "https://github.com/VolodymyrM27/CorgiBreak"

  app "CorgiBreak.app"

  caveats <<~EOS
    CorgiBreak is not notarized with Apple. After installing, run:
      xattr -d com.apple.quarantine "#{appdir}/CorgiBreak.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.corgibreak.app.plist",
  ]
end
