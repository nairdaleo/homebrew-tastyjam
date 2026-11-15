cask "glimpse" do
  version "1.0.1"
  sha256 "16bca8a8472083da953c513f4fb6cade3e7c2cf16966e7db5f123032819f0084"

  url "https://github.com/nairdaleo/Glimpse/releases/download/v#{version}/Glimpse-#{version}.dmg"
  name "Glimpse"
  desc "Compact menu bar system monitor"
  homepage "https://tastyjam.ca/glimpse/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Glimpse.app"

  uninstall quit: "com.tastyjam.glimpse"

  zap trash: [
    "~/Library/Caches/com.tastyjam.glimpse",
    "~/Library/HTTPStorages/com.tastyjam.glimpse",
    "~/Library/Preferences/com.tastyjam.glimpse.plist",
  ]
end
