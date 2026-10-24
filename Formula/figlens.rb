class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.6.0/figlens-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "c917d53a2f0407145101be7d331171b55f5867293d5683ed8535f60cc2eb557f"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.6.0/figlens-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee04672894f5fc5516702be8f41b735907b6b2b0b346fabf2e7cab5edbb04ecb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.6.0/figlens-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f26156d172f0c41997b8b40a245e2af8dd77159435a96c50bd7ec3d766f0b27"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.6.0/figlens-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "531c18fbf8d3b799632c150ecc8b954196e793d5bd54c4b9f18cf9acfa566e31"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
