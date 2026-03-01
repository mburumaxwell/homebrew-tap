# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.4.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.0/azddns-0.4.0-linux-arm64.tar.gz"
      sha256 "6eb3fd668f58ba81430b901ad5d7167791aad8fc72e41acb38a5331afd3e0738"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.0/azddns-0.4.0-linux-x64.tar.gz"
      sha256 "14b9cfea92cf8c00af624608d80855ab1514101d19dcd81dc48873abda5a2bc0"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.0/azddns-0.4.0-osx-arm64.tar.gz"
      sha256 "9d6703995e9c13826c31d8c3f2d94c4e8354dccd2f5d945e6cbb534e1b4d92b7"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.0/azddns-0.4.0-osx-x64.tar.gz"
      sha256 "fef9565127b79e7da3ef32aafc64f343c08fe232a53e98e4583e9f2af28e5ad3"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
