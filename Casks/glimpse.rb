cask "glimpse" do
  version "1.0.0"
  sha256 "1b12370717c8c6d959147b4d16c075bf8596ea964ad7f0070a172e9d522b747f"

  url "https://github.com/nairdaleo/Glimpse/releases/download/v#{version}/Glimpse-#{version}.dmg"
  name "Glimpse"
  desc "Compact menu bar system monitor"
  homepage "https://tastyjam.ca/glimpse/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Glimpse.app"

  uninstall quit: "com.tastyjam.glimpse"

  zap trash: [
    "~/Library/Caches/com.tastyjam.glimpse",
    "~/Library/HTTPStorages/com.tastyjam.glimpse",
    "~/Library/Preferences/com.tastyjam.glimpse.plist",
  ]
end
