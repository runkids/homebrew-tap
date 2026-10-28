class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.0/figlens-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4daf9d61eaa4036055e27094cd04b38af2965a0d7737821fe059934abdaf6214"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.0/figlens-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "0edbfe70d1d9c5537cc9356a4e8766f34998f2ad7e25262082dae707aaf2965e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.0/figlens-0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4e55f8d0608b290536f43bd1bf457485e56375c0724d16a1bdb3213062c7953"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.0/figlens-0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64a901c358ec9c0bdff6e7bdb575c256de5a1891da3e6ec5e36d4b5f0af0f749"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
