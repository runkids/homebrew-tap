class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.2/figlens-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "3c5b5310c174e2cb8b785896afd74e4c8c2a7a0c8253dd5686bcf7bfe2aebc67"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.2/figlens-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "b5061fc8979dd9261a0e40c384201ccf213fd3dd0ae412c7fce6aec40b3bb518"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.4.2/figlens-0.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c9badf6d555a71b359685500bfa3bb6455f888856460bcadde4b5414296caa4"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.4.2/figlens-0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c0cbd161bbdf5ea91d644ac9b95ccedcc7df7faa2cfca7d745aff05be25a079"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
