class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.3/figlens-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "ef2329abc5c7fb573969ea9d433895f2a30fe0b6d6e264d2eefb969af653c3c4"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.3/figlens-0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "a8883303849cfbe8ee333198e9f36d262ea36da7ed300b82f89e1526a65b9bb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.3/figlens-0.9.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b36a3972e47b49b91b3bbe369e3d303a0da0e45c95bf534210dd113c7d97e999"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.3/figlens-0.9.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2df705d96804a08973a0e2c2d82816684a013c094dc8d40054e8954c1c989a72"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
