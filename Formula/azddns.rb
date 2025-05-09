# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.0/azddns-0.3.0-linux-arm64.tar.gz"
      sha256 "3986b616782975e8187c00f76acd50912495dfbccbd1b661ddcdb3963cfa516d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.0/azddns-0.3.0-linux-x64.tar.gz"
      sha256 "a8522bf2bbc94be280af3349714eab65860e2f3ee1d37c1051c3c42a5db94988"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.0/azddns-0.3.0-osx-arm64.tar.gz"
      sha256 "8047cfcfbe435041d0389229151142194d2c67399c9d21156acd5a4227dcee8b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.0/azddns-0.3.0-osx-x64.tar.gz"
      sha256 "0eba9539c7f6129062622aa0e0c8ab3957da8c120b85dc00f04aae5eab7cd49c"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
