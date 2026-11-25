class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.7/figlens-0.14.7-aarch64-apple-darwin.tar.gz"
      sha256 "38416f30b76f89e7179bc97016a6524b93651e62a8df181113536a1fe650f0a9"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.7/figlens-0.14.7-x86_64-apple-darwin.tar.gz"
      sha256 "46d2612a3d53d3ba7540c70c8a4988aa9391cafdeb463b0a2802eed0590534aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.7/figlens-0.14.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29a4dbabe2b52a7afbe3ad6e15149c7485826d00b0686fe95dc4f6fae5ecc111"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.7/figlens-0.14.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52a23b64a828e2f87af487c4d4e780966ad553ca7410ad28ae38fd0ce2efabee"
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
