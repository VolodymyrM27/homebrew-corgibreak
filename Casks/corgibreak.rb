cask "corgibreak" do
  version "1.0.1"
  sha256 "d0b73050ee55d9e0e78ddc6dd64f2a69a1ad8102f7b1fa7a3755fe913428a62b"

  url "https://github.com/VolodymyrM27/CorgiBreak/releases/download/v#{version}/CorgiBreak.zip"
  name "CorgiBreak"
  desc "Menu bar app for the 20-20-20 eye care rule with an animated pixel corgi"
  homepage "https://github.com/VolodymyrM27/CorgiBreak"

  app "CorgiBreak.app"

  zap trash: [
    "~/Library/Preferences/com.corgibreak.app.plist",
  ]
end
