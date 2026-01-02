cask "ssh-buddy" do
  version "0.1.8"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/runkids/ssh-buddy/releases/download/v#{version}/SSH.Buddy_#{version}_aarch64.dmg"
  name "SSH Buddy"
  desc "A friendly SSH config and key manager for macOS"
  homepage "https://github.com/runkids/ssh-buddy"

  depends_on macos: ">= :catalina"

  app "SSH Buddy.app"

  zap trash: [
    "~/Library/Application Support/com.sshbuddy",
    "~/Library/Caches/com.sshbuddy",
    "~/Library/Preferences/com.sshbuddy.plist",
  ]
end
