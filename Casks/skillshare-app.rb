cask "skillshare-app" do
  version "0.3.0"
  sha256 "37e7a8f37f460fd40431459fe0ef157ac418fc6afe1d0f45ea9bd59a8de025fb"

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
