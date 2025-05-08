# typed: false
# frozen_string_literal: true

class Azddns < Formula
  desc "Dynamic DNS (DDNS) tool for Azure DNS."
  homepage "https://github.com/mburumaxwell/azddns"
  license "MIT"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.0/azddns-0.2.0-linux-arm64.tar.gz"
      sha256 "c106ba9d28058255ea5b9239d52b14196431183db0f7acdbbec60762ef9dfe86"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.0/azddns-0.2.0-linux-x64.tar.gz"
      sha256 "9fba8c448551c8ba5581101de1998ad2a911f43735e461cbf4c259ff7e459adb"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.0/azddns-0.2.0-osx-arm64.tar.gz"
      sha256 "08fef5688a50fad858722c51a033000f09d32adb2288074539cbc972edc7d81e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azddns/releases/download/0.2.0/azddns-0.2.0-osx-x64.tar.gz"
      sha256 "a2410942a05c0b1c66921bc061f153590288266710ad46d87b12d6a6304487a0"
    end
  end

  def install
    bin.install "azddns"
  end

  test do
    system "#{bin}/azddns", "--version"
  end
end
