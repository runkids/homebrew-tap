class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.1/figlens-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d2805fb51e146315bf849263b36c9963b1a253e10d4b0a155f7e64739a700289"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.1/figlens-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b421499e83f86d8210bb6945f4d668351fa3fcde5244510086585a54fa22c05a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.1/figlens-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fca28736af442d4bb3bde5af73ada2a62412aa37b3c625aed352361e560bddae"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.1/figlens-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bbea7c2198429e66cb9dfba406f81177ebecb8b68f9edf1146960b8c51231d3"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
