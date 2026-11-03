class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.12.0/figlens-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "905b5f3f4f2aaac963f1b224e00c2ee49945b97cb4ce98a3ff8653205c516447"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.12.0/figlens-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "6180acbd3618da4ccd6bcf0f3896cccf6abdb63a1c6ccdd11c12124aa396c000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.12.0/figlens-0.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15a39e47e7da1530effe41037f472c124ed111df7a8ce18415d1bde95faaa113"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.12.0/figlens-0.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78c819bf39529b4aaaaf63243f0adf6458386cd6f4bf52e5feec12dc8b6a43c4"
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
