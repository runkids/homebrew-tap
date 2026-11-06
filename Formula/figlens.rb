class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.1/figlens-0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "88a8f5d0c39fea90abd0eab9f12873510772d6e9ee1f21adbb60f8b972bf804c"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.1/figlens-0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c7e60696bfaab4656b327b81d0a671e178c72ce587c8ca98d1c71b28aec71ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.1/figlens-0.14.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6813f937c4c40fa580df3326b894070b6ddebc1ddba07aaaeaea75d95cb5e6d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.1/figlens-0.14.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6929d284650becebb5cd3c8d06853f1fdd111a92f9a8d3290fadcbcc716951e3"
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
