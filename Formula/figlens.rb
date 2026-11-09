class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.2/figlens-0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "4271b702dbbfa3c6a6914a4ab41200721948418f70f2f10887b2be66df6c178f"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.2/figlens-0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "be7cdf154108240e73d1cc878b7333d082aa94d89a0b056561372f4352f4612b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.2/figlens-0.14.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed1f99992c5a90f52185cf4a04e7fed29ba37cdbb6adb43592b04839e2374b49"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.2/figlens-0.14.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a559843f2ee048cdcf5c7518bccc0779771ab94c7e34596bb07741ad5a4d543"
    end
  end

  def install
    bin.install "figlens", "figlens-embed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
    assert_match version.to_s, shell_output("#{bin}/figlens-embed --version")
  end
end
