class Mycop < Formula
  desc "AI Code Security Scanner — detect vulnerabilities in AI-generated code"
  homepage "https://github.com/AbdumajidRashidov/mycop"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.1/mycop-aarch64-apple-darwin.tar.gz"
      sha256 "aaca9028ab5589bbfbc41ffe7b2511f20c7bcaa2f2ee0f61e70077c22052dce1"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.1/mycop-x86_64-apple-darwin.tar.gz"
      sha256 "ed5b1b85d6f7993ab964c288b17b6fe3222df8a7b05d81e889ad487259798e65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.1/mycop-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d105450ce9ee46dbf09cf8eecc9afdd6177590d24c6cbd32bb40fea5b40d787"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.1/mycop-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab1a1fdfeaa6dce7e853757f3b5429180c33dbd9e977ff9a8d77255fa950d9a"
    end
  end

  def install
    bin.install "mycop"
  end

  test do
    assert_match "mycop #{version}", shell_output("#{bin}/mycop --version")
  end
end
