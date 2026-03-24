cask "corgibreak" do
  version "1.0.3"
  sha256 "20de2705beae95fe090a06745e4662936056364d7513356d5b54c12f9bc36318"

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
