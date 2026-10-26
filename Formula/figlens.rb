class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.1/figlens-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "7bc5851e42faa327b3f5c42f584d773af1050851c5353c48f89038468ad8b1e9"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.1/figlens-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "dda6e2d7fa61a9a46b45ffb4b352b356ddb6bc720ea7c90f398c801153739460"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.1/figlens-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b04afaf4b30abf3662564e42fae076100717fbc753b5627435efe03c93ea5858"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.1/figlens-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92f720eb1dfd707dd7e1d9148c2714b82c67bb1fdf827a8442328173fd95a8ac"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
