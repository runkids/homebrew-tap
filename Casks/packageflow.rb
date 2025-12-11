cask "packageflow" do
  version "0.1.0"
  sha256 "43d99969aa22cd414545fb8966c51ffcf10e7ba3604fcbe9af0031ce4acad6b2"

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
