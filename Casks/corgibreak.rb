cask "corgibreak" do
  version "1.0.1"
  sha256 "bbb73e1411ea1e109ba6150211802e13cfa5448ee806fbd0058004c897eb5227"

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
