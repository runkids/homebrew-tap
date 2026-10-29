class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.2/figlens-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "23a8b168e557735055340b089c80ff31d5dd30977bdf647b18fe8278e6c7c050"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.2/figlens-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "3e2aa8e3b4043df6068ab6443155c3e157360b43e67690258d39d3f38fbf5c38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.2/figlens-0.9.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9c45cd63212cbb265c1b41102c45a1305df31d42321c9d20cf2daeb392ff812"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.2/figlens-0.9.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aadaa6c30687b2b0aa018dc9f3b9b3ad7d9b0a1804a2023254d74e7c99727f2b"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
