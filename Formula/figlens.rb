class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.0/figlens-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f198f6840ba67e0e9161b427d62c97fb1068987957b66ee4d0890576054cab8e"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.0/figlens-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5103520d9de40ecd54387b42ebf24fe9d675994d98a009e765d63da49810c005"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.1.0/figlens-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa55069bb4f2367c513ee0f4b436ceaac5ec6d683ee9834e4a37d01b1c46ce9f"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.1.0/figlens-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b87762a4ab37adf50d57b306b66962dc5997c4c6d0b102f71070a1e9881ad4f"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
