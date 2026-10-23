class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.3/figlens-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "c4ba1f76cf4d2baeea1af33b5de4c07f3ad212a84f629ba7b47afaec27600e29"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.3/figlens-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "49c30a0f521b3845bd00b60697162c18d89ed39546bd39819105107eebe0e377"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.3/figlens-0.3.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02189922bdd69e45ed642f27be6c070f68c9aa6643841c4195ce5b3bc5cbec51"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.3/figlens-0.3.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abf55efb9566d616eba2d18a1a9f5e677847052a8db52b80afe8a8bc626e547d"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
