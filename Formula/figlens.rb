class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.4/figlens-0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "7b445465e1072a883795ea3bca925b9e961cb842d37a315db48cf723cc1d890d"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.4/figlens-0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "d3585b632205642ad396eef560d055676ff2445314852d6b45fe4f60039150eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.7.4/figlens-0.7.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc4c354523516d372d9a1d54b9d0cbdee9d5dadc0a5f26077665f43e601329e5"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.7.4/figlens-0.7.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f3563c301f28ad642bdfddba14a7a7b99b0232d5d978f25fb8013e396a51ceee"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
