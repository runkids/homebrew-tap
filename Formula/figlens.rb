class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.8.0/figlens-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "54bc0c2ef7e22e30422dabc35d973ba3583b4e7dd2ba39710a26a6c1da083922"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.8.0/figlens-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "161985d777c1deb29fa8bc7abc1f3cc5d0075bf742a175d4af298d44afedc0a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.8.0/figlens-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "728a50a640e71306eb96c7fbda1bfdcc8d9a62c6ae3cb3beb52674e5b3f4b249"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.8.0/figlens-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acccff2adf82a847ed10370d95c6dbdaa09491d4ffcd7cae749588166f6e2919"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
