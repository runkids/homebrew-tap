class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.6/mdproof-v0.0.6-darwin-arm64.tar.gz"
      sha256 "95c5aede6acebfb655c91f9b238cd0bf1b41f4558eda1c15ed33b3572a06bf72"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.6/mdproof-v0.0.6-darwin-amd64.tar.gz"
      sha256 "d9f81c22e87964b1e0cbb651de5bda94aa2e2386839339812cb949c1494d0c4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.6/mdproof-v0.0.6-linux-arm64.tar.gz"
      sha256 "f3507b83f1d0556e7901f3d4bec6d34044752cc4c88a9a3ded0122db7c656d0a"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.6/mdproof-v0.0.6-linux-amd64.tar.gz"
      sha256 "b22d1e7f75ab4403ecc0238cba8530659b2dd5c4de91e3e9d99c6318cef2a623"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
