# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.4.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.1/azddns-0.4.1-linux-arm64.tar.gz"
      sha256 "bbe43de78cddec8a567ef6abeef00234004cfa75f57a02c029aea1cc5aa1f798"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.1/azddns-0.4.1-linux-x64.tar.gz"
      sha256 "2c8bc33008e53a556dd7160be8d225cdb88fa7646b08a9a90d62f9b445ac6f03"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.1/azddns-0.4.1-osx-arm64.tar.gz"
      sha256 "50e6c46387d635468d63e3c101892af1085df939cc30ea8347f2d4bff688104d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.4.1/azddns-0.4.1-osx-x64.tar.gz"
      sha256 "9ae16500135cf8d5fd1f281b1476dfeeaa9a45a6b0c9150eff192621fd537c2c"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
