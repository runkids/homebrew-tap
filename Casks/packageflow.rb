cask "packageflow" do
  version "0.3.3"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
