class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.2/mdproof-v0.0.2-darwin-arm64.tar.gz"
      sha256 "1e83a6fcacb163f607a1f35dedbd299b0c4717838a0b62ff2d61679005a35ef1"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.2/mdproof-v0.0.2-darwin-amd64.tar.gz"
      sha256 "ef9805f0f336b8943e6d26addd817fea74cf3a075e1515f1a81f1ef02ffad6f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.2/mdproof-v0.0.2-linux-arm64.tar.gz"
      sha256 "d07de7cc47dec12f3c182dc8b08a7b7e584c553bbc441beb0e795dad9dfa0fef"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.2/mdproof-v0.0.2-linux-amd64.tar.gz"
      sha256 "16efca374ce8de272ffd4023f052d155ec5531e92a96d1c457b90d267eb0ede7"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
