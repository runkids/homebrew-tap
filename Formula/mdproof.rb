class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.4/mdproof-v0.0.4-darwin-arm64.tar.gz"
      sha256 "82d6635e965aaee867a70ca50ef9356f9d4a14d21504eec2cbaf96b09f00bed0"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.4/mdproof-v0.0.4-darwin-amd64.tar.gz"
      sha256 "83ce95dfdb5d43f01c743812207d0391aecf03b9c6d65ef1b1cb4c99e63292a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.4/mdproof-v0.0.4-linux-arm64.tar.gz"
      sha256 "9fe1220df331b5123caa3d4d979ae5dcfc8498b44ecaa96b1e466d18cb6059b4"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.4/mdproof-v0.0.4-linux-amd64.tar.gz"
      sha256 "9fcebdcfbc05b96767b9c5303d6ee5109b3c9b3cfb868b2ec6f86b47fdb03f51"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
