class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.0/figlens-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "29d79e84449d5a3d97bf3383f34e85423a9e183e014cd91567ca7b88ef92dff5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.0/figlens-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "6479c5e40b8e4b32ef58d30919f62304772421813be86acb2a1916b8d3f8869b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.0/figlens-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "837342898c32e69a7cf3ab947cc79dfdbb9cd935eb7d7fa9a99f6b8e1e9c5ea5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.0/figlens-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e39557da56ed69b5a5c2e0378b745a3b6efb6a14b3332e2908da858cc3b0d985"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
