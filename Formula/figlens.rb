class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.10.1/figlens-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "0373b43f596de691d636c8b5f93e8a29103628b8e17575682d4a8f3b281fee97"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.10.1/figlens-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "635991938530c10eb11dc67320a7b881a00c5bb7170460c43c69bdd3f64271cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.10.1/figlens-0.10.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19a360fe57f0f427ae001c0cccc4485d80280be7704d969532c2ff3056741fb5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.10.1/figlens-0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "462d31dad7a4c57b104608c5c7699c04c0e789e7ae079eeb44132aef61778d15"
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
