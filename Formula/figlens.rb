class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.5.0/figlens-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "852ad9c209a6b84ff5adea40066814b4437ecc6fc1e9223e663a4a79ef79bcbf"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.5.0/figlens-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c3602cb626169e0462e8e3b4e4af82b64ac4cbdadc86d75d4934fd9bd9492a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.5.0/figlens-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3035ca88ca8ea4f9918ab5955ebe0be7040ecc455662e3ff1a0f16500172fb18"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.5.0/figlens-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ff055ed6a63136bd069aebf0ea1a0a4192ff22d7e9b85e9f38b95638e98a5b8"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
