class Figlens < Formula
  desc "Figma screens for coding agents, with no Figma app, login or API limit"
  homepage "https://figlens.runkids.cc"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.1/figlens-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "60c996747e7065ba3dbc487ebca2464a33c9e12292f843c3dedddbfb4b76b670"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.1/figlens-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "c9ab47502bcacd3cea409be15f0419046790837c0e6fd513f2446691c65f99d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runkids/figlens/releases/download/v0.11.1/figlens-0.11.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79cfa74c2cbfbe571d4dba8c07a4e9a99341094bea6c0ccc6ff54a9adbb569bd"
    else
      url "https://github.com/runkids/figlens/releases/download/v0.11.1/figlens-0.11.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70ddf864ea4ef2859510c35183bf486781257890de58dba5abd214168ac25c14"
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
