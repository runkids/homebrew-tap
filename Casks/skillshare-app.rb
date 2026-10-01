cask "skillshare-app" do
  version "0.1.0"
  sha256 "164075417591b9a89dbd9aa30edbb722f7cb20132ad4d60663382707a57237af"

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
