cask "ssh-buddy" do
  version "0.1.9"
  sha256 "6d36a9c61e09cf8965febca4b9809cd1b538bc6b0d27b0932f90960832e89bc7"

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
