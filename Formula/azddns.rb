# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.3.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.1/azddns-0.3.1-linux-arm64.tar.gz"
      sha256 "4883ae98dfdc5928c297662ca7c5cd055e040337d3e420f003d4cb46efd6aefc"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.1/azddns-0.3.1-linux-x64.tar.gz"
      sha256 "e21a2ac25ebb907585126172e952816b7c3c99535b141ed169490aa9268ba4ca"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.1/azddns-0.3.1-osx-arm64.tar.gz"
      sha256 "f0c12dc5f209558fb914eaa4796234bf720d8b550a99dc9a810c1829ede6614a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.3.1/azddns-0.3.1-osx-x64.tar.gz"
      sha256 "e4f38c9d713e589dec9702593b2337d2a41a762e4514fd82af94be9006638943"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
