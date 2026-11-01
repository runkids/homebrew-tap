class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.2/figlens-0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "c2770c44760d37e5cdd07c46ea287c09a2f6959a6fb5f66668e461b76cffdd1d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.2/figlens-0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "6c706d9baca3cefe543063df6a02e7cdfaf6c9b00fe32afd33d787c43f96a4db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.2/figlens-0.11.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8bca5fb8293529606b830e0194e5fef33de33a5561616fa5ea5d1438b3e896d5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.2/figlens-0.11.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b143f40dbbe03850de5e7c767101f445799019aefa00f574e87dc56e31cb8b3"
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
