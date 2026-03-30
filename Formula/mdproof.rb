class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.7/mdproof-v0.0.7-darwin-arm64.tar.gz"
      sha256 "a63fe24b58e0d83698c468d0f0981134391b75276cc33b67441b2e496e76f678"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.7/mdproof-v0.0.7-darwin-amd64.tar.gz"
      sha256 "de138d8d6160961d33e20a2b18b350c4ea272c33a410c3377c6b26ffcae410be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.7/mdproof-v0.0.7-linux-arm64.tar.gz"
      sha256 "c8af1b7719ab8c9d93a886ab6e29797b07650015a75dc90db3dab4b7c4edb8d0"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.7/mdproof-v0.0.7-linux-amd64.tar.gz"
      sha256 "94ac571083d49afd125a5049cdc37b1402a04df7bd28341be3019adda9dc5ac8"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
