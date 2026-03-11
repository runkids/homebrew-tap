class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.3/mdproof-v0.0.3-darwin-arm64.tar.gz"
      sha256 "784d70038709e3e2933549829d50ed87634ee7af721ab80ed397a7296bd5c5fd"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.3/mdproof-v0.0.3-darwin-amd64.tar.gz"
      sha256 "8f8679d18dda42a3fb035568d376a979960c3464e5994477b845d83316d66cfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.3/mdproof-v0.0.3-linux-arm64.tar.gz"
      sha256 "0a718f7aaafa27de5c04913cbbcf809a64189731b0c9fd33d1c1c28d3867342a"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.3/mdproof-v0.0.3-linux-amd64.tar.gz"
      sha256 "9d6446f5b96e6a3d4d8ea6924483aa921e701d02418ed03c50015698c96703d8"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
