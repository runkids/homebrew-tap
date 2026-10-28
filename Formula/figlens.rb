class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.1/figlens-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "1e98f0ddfb380a1d378e0a071146e4c12875ce4f0a22d6fe027e32f2f1ca999c"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.1/figlens-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "838394adc06c810542a73453f1c058f610b596300972bf8bcb422b341758f215"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.9.1/figlens-0.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c74ea5e12f79f5669b28f7c048d4d737504ec396b4bb638f056ddac45e51b6d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.9.1/figlens-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e9e76261d0d39061a61b901a1c091f3872abd9522c4c02616a22d23d0394fdf"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
