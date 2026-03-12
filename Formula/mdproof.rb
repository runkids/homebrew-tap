class Mdproof < Formula
  desc "Markdown-native test runner — write tests as Markdown, run them as real tests"
  homepage "https://github.com/runkids/mdproof"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.5/mdproof-v0.0.5-darwin-arm64.tar.gz"
      sha256 "3d690553298b1ad87c2958f6daefb82cbf92ed4ee8275fe8c6c69ae7b810eeef"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.5/mdproof-v0.0.5-darwin-amd64.tar.gz"
      sha256 "f046d4f3309df167f3e0f19f1ad117d77751511d1c6911b69177af651aa6a1e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/mdproof/releases/download/v0.0.5/mdproof-v0.0.5-linux-arm64.tar.gz"
      sha256 "c0eb79246a6451e518f70e05c93fcedab14d54b6c14996e38d3d2303c6516051"
    else
      url "https://github.com/runkids/mdproof/releases/download/v0.0.5/mdproof-v0.0.5-linux-amd64.tar.gz"
      sha256 "e34dc1323267a056dc159c5fde4e2b795929ccd83ef991269fe8e35d7421b4b4"
    end
  end

  def install
    bin.install Dir["mdproof-*"].first => "mdproof"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdproof --version")
  end
end
