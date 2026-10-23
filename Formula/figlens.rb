class Figlens < Formula
  desc "Read Figma .fig files offline: REST nodes, variables, assets, renders and design bundles"
  homepage "https://github.com/runkids/figlens"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.2/figlens-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca6a353df8c3afead2641f5aac142f25e60544f32cb82a00d75857c937df58d4"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.2/figlens-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "f669faf7d4ee96298c033c3d22f5dbfaf96e55896ce0b382a94d616f8de48ad8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.3.2/figlens-0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc98f96c80c3f075b9dd30b8789f5c5e3840babea8e5e9198ac72a046d566f80"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.3.2/figlens-0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9a64b627ee6c1c5a057558260fe519b593f207e72bd546c2d77b7632fdf12e7"
    end
  end

  def install
    bin.install "figlens"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlens --version")
  end
end
