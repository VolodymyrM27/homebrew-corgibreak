cask "corgibreak" do
  version "1.0.0"
  sha256 "6b471c1b4c8fee4e19a4726a70ba187d982f4c5b23d5b722a9665eaab0aa68f1"

  url "https://github.com/VolodymyrM27/CorgiBreak/releases/download/v#{version}/CorgiBreak.zip"
  name "CorgiBreak"
  desc "Menu bar app for the 20-20-20 eye care rule with an animated pixel corgi"
  homepage "https://github.com/VolodymyrM27/CorgiBreak"

  app "CorgiBreak.app"

  caveats <<~EOS
    CorgiBreak is not notarized. To install, use:
      brew install --no-quarantine #{token}
    If you already installed without --no-quarantine, run:
      xattr -d com.apple.quarantine "#{appdir}/CorgiBreak.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.corgibreak.app.plist",
  ]
end
