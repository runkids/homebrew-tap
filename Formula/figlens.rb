class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.2/figlens-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "4fb758d92ace88f7b44d73c63f30c09f3b29772464290331ea52d7569d1e1b07"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.2/figlens-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "c32b4327833cfdda000b54d1480003978f0469de8867d46fe0fc1159ac460798"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.2/figlens-0.7.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11c78d1ee6b1e383d39f8ebe166c6d691c653fe4f52d0c276bc2a46235851ae0"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.2/figlens-0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08a40b5824da046f339526e5c79a801dddb4d1cf56d3bac1ace4650341c311c7"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
