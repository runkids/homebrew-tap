cask "skillshare" do
  version "0.0.1"
  sha256 "ac9cd713348cf867207195b0b8ae4bd572096aaf7b8e0cd423f7f6f306d1fb48"

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
