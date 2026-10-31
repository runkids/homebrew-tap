class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.10.0/figlens-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "548a0a36b9924d44672581731eecfed77fbe97fb750e20c072cd418a2ef431a3"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.10.0/figlens-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "394d82aa3c657b769cec75298efe1aabc7a2a269887af82b8e77cdf60b21f301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.10.0/figlens-0.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce4561831d84917c51535450c2f3fee033422dc11c250c52e8b8c37bc5dccadc"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.10.0/figlens-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "caadc4555059b3937951954fcfabb770dd1022a50420abc030a871301b3b6431"
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
