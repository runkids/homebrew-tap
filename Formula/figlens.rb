class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://github.com/runkids/figlens"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.0/figlens-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c0d5214bceff1c89db88f38ecfe429d441fbea63e5c72bdd7c54e3c15031cab"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.0/figlens-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "8d6979fc5d69092cd86579be1b9a4d088c5df34e41f311299c7a2f66a43d4785"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.0/figlens-0.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e6eac779d14908f19f50e6800d298b838cce76124f1e676ac3b5a752472ec76"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.0/figlens-0.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9e4d25e14ccae6716a518485882c45441f70c18076f067653affc4274948402"
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
