class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.0/figlens-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fe0a0c1b801570061f679baf6e81c6fcd269b62ddd65c90e420cffc84d360f7"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.0/figlens-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2251a06bf3bdc4eb5635f3d2e6c9115614691d9f10ab43685a5be7a87ea9bc0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.0/figlens-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9aaee536c97593a348304ec19132da8ed72f9287db0eacc0d7d32e448ef1dc2"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.0/figlens-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fba989bbf4b6e3444ced1c55af844bc9e9443c9153868297e35a25df6565cd6a"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
