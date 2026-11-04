class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.12.1/figlens-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "c67912ae61c96884835647cb8cf7fbe4b262f3e9643e664c055ce8533c1c919c"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.12.1/figlens-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "a686a1d4c726bc09e88fc638b0415ffac9465f885a82b06ad895d668782ae46d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.12.1/figlens-0.12.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5036cbf7fb82aa16ac249ee8afd3d6d80577c84322dcd0b0eeaa2663c2607fd5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.12.1/figlens-0.12.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31a674360cdbd67785189f330ccf30a1c09febdacf160b91b33310197b249c52"
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
