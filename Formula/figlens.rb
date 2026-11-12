class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.4/figlens-0.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "f1ec4d6897313fd46d8f219762907836ad8b0309d2d43d0151d3f6f271672769"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.4/figlens-0.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "3c97c63204cfa59fad935176f4de8ec7bf5bad68b30ad4f3bae15e92f2bbe428"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.4/figlens-0.14.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b434153917cd74bfc703deb96f24329b67436cc67e22b4cd4570fc49c4da2e24"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.4/figlens-0.14.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "466ca14d42e2b3172126a8001a3454dd0a0fcb894b6e78efd1abae2ce827319e"
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
