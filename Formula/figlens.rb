class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.13.0/figlens-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "f1de692b959b1a62751ae0fde46572f44abfc5fae1b08658637ad6c716a3d505"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.13.0/figlens-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "96063792cff921d596636bbeabb5b174cb43f438dd8eef70fe525a5fb850901b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.13.0/figlens-0.13.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3232aca77f82fee27d84ef910cf052bc96035af87784dd51cab28e647676e8e1"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.13.0/figlens-0.13.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc36acafc953ae0b7f7aaa7bdf5fa31d3f2b4712e87380e7506c110314ecd525"
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
