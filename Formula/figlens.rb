class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.0/figlens-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "91d9c0c916403f57b48fa0a475b8664365f25e76665ba9596087c5bb391954ed"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.0/figlens-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "87616e5fae4aba7a0b68f6fd1a40dd2cb0e5859d74f14e1b749a4c40d32718e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.0/figlens-0.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c6f2d9ee453acb6bf8dcf647386cabb70a2fe4c59c54c2a5d4873b31e5414e4"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.0/figlens-0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b238b037e2f2e304dcf2da11b9db30fecf686084a62c3b08b9ca8179916868f"
    end
  end

  def install
    bin.install "figlens", "figlens-embed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
    assert_match version.to_s, shell_output("#{bin}/figlens-embed --version")
  end
end
