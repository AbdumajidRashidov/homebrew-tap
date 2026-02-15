class Mycop < Formula
  desc "AI Code Security Scanner — detect vulnerabilities in AI-generated code"
  homepage "https://github.com/AbdumajidRashidov/mycop"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.1/mycop-aarch64-apple-darwin.tar.gz"
      sha256 "2ebd0afc21251764174428f10df2709b9f4cb3adf0424e0a801a4cf29caf7d52"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.1/mycop-x86_64-apple-darwin.tar.gz"
      sha256 "393d8ebec70ea58a5621a5163188a7603e8db255a6d5263abf5ae25a93acdac6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.1/mycop-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d175b1b29fe3f1ae25357ed7fd4b47c7268226f99ba53920589a0f54b50ee5cd"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.3.1/mycop-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89303f4040eaba3b79c77e231ce9c024d8dc93d1b08c56b38ae52e1cd6289170"
    end
  end

  def install
    bin.install "mycop"
  end

  test do
    assert_match "mycop #{version}", shell_output("#{bin}/mycop --version")
  end
end
