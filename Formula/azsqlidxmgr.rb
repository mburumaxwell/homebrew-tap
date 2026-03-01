# typed: false
# frozen_string_literal: true

class Azsqlidxmgr < Formula
  desc "Azure SQL Index Manager"
  homepage "https://github.com/mburumaxwell/azsqlidxmgr"
  license "MIT"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.0/azsqlidxmgr-0.3.0-linux-arm64.tar.gz"
      sha256 "a429a15a56081a1cf03efb326019574c7c3c8826ef2ae621bb62908872ca0d3b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.0/azsqlidxmgr-0.3.0-linux-x64.tar.gz"
      sha256 "b6740f35bbd2671e5626fda5b74182d98096ed5992f1a8bdd5638adcd9153f59"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.0/azsqlidxmgr-0.3.0-osx-arm64.tar.gz"
      sha256 "2a0c4a134224022a5c46e91c9fe997f56b2b65b2b78f3bf9d3748f6d417b4a85"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.0/azsqlidxmgr-0.3.0-osx-x64.tar.gz"
      sha256 "8fa0b84f1a5d0e0ea07e4158b3db404ff26b1da2d68a70d28c1816c2aaa4e819"
    end
  end

  def install
    bin.install "azsqlidxmgr"
  end

  test do
    system "#{bin}/azsqlidxmgr", "--version"
  end
end
