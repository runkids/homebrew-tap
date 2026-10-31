cask "skillshare-app" do
  version "0.7.7"
  sha256 "ad2af305274b6110c6a098fe0d327ad8ae234ce75cf9b51f7b40a81c54355da5"

  url "https://github.com/runkids/skillshare-app/releases/download/v#{version}/skillshare_#{version}_aarch64.dmg"
  name "Skillshare App"
  desc "Desktop GUI for Skillshare CLI"
  homepage "https://github.com/runkids/skillshare-app"

  depends_on macos: ">= :catalina"

  app "skillshare.app"

  zap trash: [
    "~/Library/Application Support/com.skillshare.app",
    "~/Library/Caches/com.skillshare.app",
    "~/Library/Preferences/com.skillshare.app.plist",
  ]
end
