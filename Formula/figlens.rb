class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.4/figlens-0.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "dd0ba4a0e52736aafd75f3e5466c532cf8eb2e04956db8b8020284091ad02b7d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.4/figlens-0.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "5757926fa5adbc196aa8959d04a4ada43e980d84cdf725c191de8ec7839f413b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.4/figlens-0.11.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85eadf77d64807bddfee1b4d7367ec6b5d4bd5fb3720d2086d856706e8deb45a"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.4/figlens-0.11.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79606b0d58a43a27eb3885b214dea148bfa65ab9d30f741dc3d75e4a7bba8621"
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
