cask "packageflow" do
  version "0.1.0"
  sha256 "2a72c94cc083162167b306d132d933d98f7d9e2b2d1502580fef139bd2cf74a2"

  url "https://github.com/runkids/PackageFlow/releases/download/v#{version}/PackageFlow_#{version}_aarch64.dmg"
  name "PackageFlow"
  desc "Developer workflow management tool for frontend and Node.js projects"
  homepage "https://github.com/runkids/PackageFlow"

  depends_on macos: ">= :catalina"

  app "PackageFlow.app"

  zap trash: [
    "~/Library/Application Support/com.packageflow.PackageFlow-macOS",
    "~/Library/Caches/com.packageflow.PackageFlow-macOS",
    "~/Library/Preferences/com.packageflow.PackageFlow-macOS.plist",
  ]
end
