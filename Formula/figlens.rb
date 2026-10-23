class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.1/figlens-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "65367a531241177bb2085f4932e489a46149c73cbb126f727b9ab298ef1bf2a5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.1/figlens-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "e10a712ed6c7841d862e55e8bd7375fc9befb80dafc843743415876c463644e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.1/figlens-0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10a889a457b46ce90595b0c8151518adf3a7f75dee4ee4cb137078f41da4a14b"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.1/figlens-0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "450c97342c9d7c4dd25cd77e6246d0b46de3daa5b91e1b660c43836abacba341"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
