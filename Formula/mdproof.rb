class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.8/mdproof-v0.0.8-darwin-arm64.tar.gz"
      sha256 "b8488ff1761342fc1cf48591f58fc005d51bc5fd2545f603cf689d15c5053dff"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.8/mdproof-v0.0.8-darwin-amd64.tar.gz"
      sha256 "15481c99989bb9110323e3ac0fb77bee1764ce26dc12ffe1c95e02c6b8fa31f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.8/mdproof-v0.0.8-linux-arm64.tar.gz"
      sha256 "aecc9f1bd39fff5d4b8d2c0794198420d83da0f3b72c8959532dc739ea8373ff"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.8/mdproof-v0.0.8-linux-amd64.tar.gz"
      sha256 "ff8d8e59f45d4751b86733e1b511eac434499422938d433a0b9cf1e3a19525e6"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
