cask "skillshare-app" do
  version "0.6.0"
  sha256 "0efdc93c62f952c84fcc48bdaced187e75dbd31288e75e46006d117ea0685e63"

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
