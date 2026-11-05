class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.13.1/figlens-0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "485c80a77fc4a58dc476a5b7cb81587d40062b1b2caea36646f2550c1432645c"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.13.1/figlens-0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "17caba125929a5a12de1717198f231ce20eb868d67f1211f65e37b07fb450f98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.13.1/figlens-0.13.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c3cd50bdba62daf6f7224d9a0104395b3a8394ade92d3abda2d206c5a63a93d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.13.1/figlens-0.13.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd2c583a225c66233de150762d69b449d2cf61ee304895caf345534fdf0e0f15"
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
