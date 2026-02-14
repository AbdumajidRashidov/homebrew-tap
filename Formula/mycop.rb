class Mycop < Formula
  desc "AI Code Security Scanner — detect vulnerabilities in AI-generated code"
  homepage "https://github.com/AbdumajidRashidov/mycop"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.0/mycop-aarch64-apple-darwin.tar.gz"
      sha256 "b32989280100bdb8db1bc5ebb0c6ecaf29d52b9249e66989abec987b9a82c4e3"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.0/mycop-x86_64-apple-darwin.tar.gz"
      sha256 "f63c80752f5537b12d299dc04429e0ee42c3fd66458e9416a37a7f6efebbf281"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.0/mycop-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6461fcbe6a0f4584fff2ad4dd51d73e172c9dbecacee3c678ae8ec2633ba7383"
    else
      url "https://github.com/AbdumajidRashidov/mycop/releases/download/v0.2.0/mycop-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42e080b21777977893d266e30284251bcf58f664783a4da3183b7518f47e8902"
    end
  end

  def install
    bin.install "mycop"
  end

  test do
    assert_match "mycop #{version}", shell_output("#{bin}/mycop --version")
  end
end
