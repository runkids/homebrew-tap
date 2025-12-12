cask "packageflow" do
  version "0.1.1"
  sha256 "adcd22f4ad0f3c41891157b55788247775b133e3011c5061c4a9790bea5f983f"

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
