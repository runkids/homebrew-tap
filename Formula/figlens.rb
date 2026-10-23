class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.0/figlens-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d74a6c04720608f5c8b838bfd603ca8a7532d7b9caa9e07c8c8a911248c2449"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.0/figlens-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1de5e814f516c98ed553fac4d35f0387cf85e6a1ea8edc8cb8396d1a2aaa8d6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.0/figlens-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4834d22f1886d7855d4b513baec8187ac24956f2a01a9f265d7b0672cba2227"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.0/figlens-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9279f6e1906b2570ef2cd6c24f0f838db40b507c6d2b7589afadf38d3dbe1ef7"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
