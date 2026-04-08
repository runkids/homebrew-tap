class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.9/mdproof-v0.0.9-darwin-arm64.tar.gz"
      sha256 "6cb82579eb9573a4abbe2a7aa90ee004d6f46332480870b368fdaadfd4145f79"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.9/mdproof-v0.0.9-darwin-amd64.tar.gz"
      sha256 "ae4d033bca7f5fc9f55f6b2d30979364c02e45961254674f57f408b5404a9131"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.9/mdproof-v0.0.9-linux-arm64.tar.gz"
      sha256 "73a051199fdec568a74630a38c16f8f0fb3ec1919ad3db8c632958da39b91264"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.9/mdproof-v0.0.9-linux-amd64.tar.gz"
      sha256 "d248ad50157d0e3c0d74479980f5918b956e4330108c1187c1b7835e3ee63107"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
