cask "packageflow" do
  version "0.3.0"
  sha256 "8de5e1c0109c71be7d02159ce12889b5e39f44cbb1ca79a5edcd8e4e1dd4b4ce"

  url "https://github.com/runkids/PackageFlow/releases/download/v#{version}/PackageFlow_#{version}_aarch64.dmg"
  name "PackageFlow"
  desc "The AI-Driven package.json Project Manager Turn scripts, Git, workflows, deploys, and MCP tools into one-click actions."
  homepage "https://github.com/runkids/PackageFlow"

  depends_on macos: ">= :catalina"

  app "PackageFlow.app"

  zap trash: [
    "~/Library/Application Support/com.packageflow.PackageFlow-macOS",
    "~/Library/Caches/com.packageflow.PackageFlow-macOS",
    "~/Library/Preferences/com.packageflow.PackageFlow-macOS.plist",
  ]
end
