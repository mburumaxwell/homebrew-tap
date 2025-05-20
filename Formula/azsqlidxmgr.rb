# typed: false
# frozen_string_literal: true

class Azsqlidxmgr < Formula
  desc "Azure SQL Index Manager"
  homepage "https://github.com/mburumaxwell/azsqlidxmgr"
  license "MIT"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.2.0/azsqlidxmgr-0.2.0-linux-arm64.tar.gz"
      sha256 "aa7499dfad46ac8170a60b4149043d112fd3d3570abfad703edbe0e562f89dfa"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.2.0/azsqlidxmgr-0.2.0-linux-x64.tar.gz"
      sha256 "a158698129c6026a962af1a7f81f41863a8f8f9b8886aef727f31929ec68623f"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.2.0/azsqlidxmgr-0.2.0-osx-arm64.tar.gz"
      sha256 "e7751a5b1752fc75d3df529394715d87d473ddc12efb8d477d38cb276716440b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.2.0/azsqlidxmgr-0.2.0-osx-x64.tar.gz"
      sha256 "a07b1a6c346d24bce9812a5cacd1fbf8c5b7bed4f73faf210ace058dbe0975c4"
    end
  end

  def install
    bin.install "azsqlidxmgr"
  end

  test do
    system "#{bin}/azsqlidxmgr", "--version"
  end
end
