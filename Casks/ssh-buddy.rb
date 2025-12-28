cask "ssh-buddy" do
  version "0.1.0"
  sha256 "078fe4782ed0be15f25bbf6c33eb0edc1a22298ce68c88422996bf474f991de3"

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
