cask "corgibreak" do
  version "1.0.0"
  sha256 "d066695fc3023fbcf240cf6681d10d39a8c821ca7c0d308fddec6065939c3cc0"

  url "https://github.com/VolodymyrM27/CorgiBreak/releases/download/v#{version}/CorgiBreak.zip"
  name "CorgiBreak"
  desc "Menu bar app for the 20-20-20 eye care rule with an animated pixel corgi"
  homepage "https://github.com/VolodymyrM27/CorgiBreak"

  app "CorgiBreak.app"

  zap trash: [
    "~/Library/Preferences/com.corgibreak.app.plist",
  ]
end
