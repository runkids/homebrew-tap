class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.6/figlens-0.14.6-aarch64-apple-darwin.tar.gz"
      sha256 "626e125885775c64289ae97101641b7aeca576c46a38b03de40eca4352949648"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.6/figlens-0.14.6-x86_64-apple-darwin.tar.gz"
      sha256 "1703834a1bc0f484bb050abd03045cb4a1dc75af646346347ceeaa322833a564"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.6/figlens-0.14.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c1c1889277ed7c5156bfd9215045b6e8fcf04e869b22ccd29a449728271b327"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.6/figlens-0.14.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8effd1645a66d08b5689ded99d4afb8e0bd6ed1b7907215c23c0a7f4d4a4932c"
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
