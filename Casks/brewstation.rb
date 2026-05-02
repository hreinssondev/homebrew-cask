cask "brewstation" do
  version "1.5"
  sha256 "0966218fce07b530b09c2f1d53d7379c7b2edf374d1f8ccf09410a6fade3f066"

  url "https://github.com/hreinssondev/brewstation/releases/download/#{version}/BrewStation.dmg"
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
