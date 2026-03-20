cask "corgibreak" do
  version "1.0.2"
  sha256 "f368940b6d4e5644b4d0195bc9d8570a5387e38dcb2f7d6eaad9e2e61ed0a371"

  url "https://github.com/VolodymyrM27/CorgiBreak/releases/download/v#{version}/CorgiBreak.zip"
  name "CorgiBreak"
  desc "Menu bar app for the 20-20-20 eye care rule with an animated pixel corgi"
  homepage "https://github.com/VolodymyrM27/CorgiBreak"

  app "CorgiBreak.app"

  zap trash: [
    "~/Library/Preferences/com.corgibreak.app.plist",
  ]
end
