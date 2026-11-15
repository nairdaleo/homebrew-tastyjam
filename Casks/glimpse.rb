cask "glimpse" do
  version "1.0.2"
  sha256 "af6e09e1f875618b583b795798df8f313a384007cb45e8543945da702bfeb322"

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
