class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.2/figlens-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "fdca53d3e5f1b0b9ab094704e94299a1e195d4dfed69d7c960d8f4678b23b1a0"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.2/figlens-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "3edee05c4ee2c12bad7d27c00bb8998620467b290049b1d2012e05f349e0b584"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.2/figlens-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db06a3c6414f5b424602d440efdcf8f60638ab76e75cfe227995c0b5abd8645b"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.2/figlens-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12365ebc7af85414a83d41b056025a20660147d6cc78189f8babc022df9fe607"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
