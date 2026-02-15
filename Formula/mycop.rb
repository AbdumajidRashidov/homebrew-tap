class Mycop < Formula
  desc "AI Code Security Scanner — detect vulnerabilities in AI-generated code"
  homepage "https://github.com/AbdumajidRashidov/mycop"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.0/mycop-aarch64-apple-darwin.tar.gz"
      sha256 "f86d0c9935f426fe33f4c555546eb8dc4929215b38a08343113ecf2f61bd1cbc"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.0/mycop-x86_64-apple-darwin.tar.gz"
      sha256 "7d67c0bbda30c237765fc5b7688257d427daf615bafe66f9c05dbbb99a917ef1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.0/mycop-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e0ff663d9a799f7938cca481fb962b664f8059d60031d15034e44a738bd49f3"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.0/mycop-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2c5a3576ecb4f8217ce295fde4190de721a60efc241ec60a46c443fe68339a6"
    end
  end

  def install
    bin.install "mycop"
  end

  test do
    assert_match "mycop #{version}", shell_output("#{bin}/mycop --version")
  end
end
