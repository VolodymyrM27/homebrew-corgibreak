cask "corgibreak" do
  version "1.0.2"
  sha256 "f8734bd6d5a4d7e894e281cfc844bc624cc9cce5c6fa0c4812d3ac694578f94d"

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
