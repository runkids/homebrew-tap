class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.3/figlens-0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "2c1e6646c9c70c92f3ee92114b1671b5fb78f15cf9cc8138a715dcd5bd70b600"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.3/figlens-0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "ca1f38893172340d3eb94f8e53e3e54ec82df98c10f82d9a410f5f300762da88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.3/figlens-0.14.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a1c561914412590c5ffa863fdf09aa8851af6699ea5c675b425d47d9da58c04"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.3/figlens-0.14.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fbab47efa8b91bd63fbff1e2938a02ff161e6891a561c4f1a02f171ab0435534"
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
