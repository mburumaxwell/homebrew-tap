# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.2.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.1/azddns-0.2.1-linux-arm64.tar.gz"
      sha256 "92c5354d8571b0a6841943bcfcb54f704775ee4217c3955feb1cd3f905c89e60"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.1/azddns-0.2.1-linux-x64.tar.gz"
      sha256 "23cb04f3d5335b9d10d378cef43700bcba9f174cfccf442d6e613b6502daab78"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.1/azddns-0.2.1-osx-arm64.tar.gz"
      sha256 "47cfcb26dcbd8c27f861e5cf80562aaebdc1ef50d21885f37848eb3b09ebef76"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.1/azddns-0.2.1-osx-x64.tar.gz"
      sha256 "4126b8a798347e0a5d04dae301b7216ec2ce78c2cb23e2014586a33a10c1df7a"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
