class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.1/figlens-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "85a7433c3153c2915075f856cf359bc74eb557f37e8232034f28665933f19cd6"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.1/figlens-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "44b3e50fe6fce04ec51bd253013722798c4fb53ab0291ab960d4fd12559d1d6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.1/figlens-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5c93a35f252dff799c28e2d296f43cd65544ec3f14dfa960b444cbc1f6bf699"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.1/figlens-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a32c00a7918819e7398dabcd05eeff13cf7df5cfb4aa3aad98511fff2f0f676"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
