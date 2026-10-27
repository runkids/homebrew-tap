class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.3/figlens-0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "362cbb068f14d4f11f2d956c94ae2ac5fdc5c966dbf5724d8dda328d66867d54"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.3/figlens-0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "1a0ac51a06567c7f0ef9ebe3665ff07902fea29d9c4d68bcec3012d2ebeae2a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.3/figlens-0.7.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba33a66095490c6bf4f628598acfa3e68d7bd1f7e55de879a299dd9d46734333"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.3/figlens-0.7.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65a3fa66aacee3ce9792ec62633cafaa37b0c49d667009a778cbe5a202a40a4d"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
