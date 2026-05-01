cask "brewstation" do
  version "1.4"
  sha256 "738691b9b9b170b38d0c074e891c7f92a536821bfdcc72337995a3d61a143287"

  url "https://github.com/hreinssondev/brewstation/releases/download/#{version}/Brewstation.dmg"
  name "BrewStation"
  desc "Homebrew GUI manager with snapshot saving and restoring"
  homepage "https://github.com/hreinssondev/brewstation"

  depends_on macos: ">= :ventura"

  app "BrewStation.app"

  zap trash: [
    "~/Library/Application Support/BrewStation",
    "~/Library/Caches/BrewStation",
    "~/Library/Preferences/com.hreinssondev.brewstation.plist",
  ]
end
