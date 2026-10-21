class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.2.0/figlens-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c0a7b6d2d36a75b2aeb3cb75975017a97c0f2d8eec6abd9a15d0c58db69f774"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.2.0/figlens-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "37544eac6a0c6136e53ecc28ba6510dbcee11986266b33875f981b6dfa722a21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.2.0/figlens-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad167023231f1c60e81ae8bb1dd1e91f4639a522dc31c569e735454396ba5254"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.2.0/figlens-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbf33d208a3f09bb30de0eb78286fac77bd47d0e9bb7faa07023425557167942"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
