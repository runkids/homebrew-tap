class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.3/figlens-0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "3c3b0d8f892a015a99af4f9a44179c16825a8114b59be853c61a0dfa94855470"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.3/figlens-0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "550ce5bd83a79a574bca0143b25ca20f1386442010a27570b3ac2756b51f102a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.3/figlens-0.11.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "239115437be2688170e021da39e1316ce1ce1c697c4333cd5270970c05e1d69e"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.3/figlens-0.11.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00ae03a7aa8f17a172dd8f8f39403992bdcfef3d2063f9799c2e90264c0d551c"
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
