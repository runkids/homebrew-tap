class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.14.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.5/figlens-0.14.5-aarch64-apple-darwin.tar.gz"
      sha256 "e3ba45232d56e8654bbce6a7bb8003add1486e7d7854fb7ce20abc8eb98fec22"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.5/figlens-0.14.5-x86_64-apple-darwin.tar.gz"
      sha256 "2d7367a5ed15dc3d937b83cbe6c936f2a4291bcb959017fa45a591fc8fb6c29d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.14.5/figlens-0.14.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "008e115ced6df3754a4173d0aa386cf88d8590e791ef259b7da21f48007102ea"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.14.5/figlens-0.14.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "734f412adc8addfc2399c143f9a23422bf629f99bf5d839aa549ba2fc1aba4d1"
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
