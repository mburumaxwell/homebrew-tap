# typed: false
# frozen_string_literal: true

class Azfwrmgr < Formula
  desc "Azure Firewall Rules Manager."
  homepage "https://github.com/mburumaxwell/azfwrmgr"
  license "MIT"
  version "0.2.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.2.0/azfwrmgr-0.2.0-linux-arm64.tar.gz"
      sha256 "0dcf56324c3c7551fd3c31e4669e528bbea6248c2ca17b867ab683e8ceeff5a5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.2.0/azfwrmgr-0.2.0-linux-x64.tar.gz"
      sha256 "0f16d72baa70fca569f56e2ca32629ebbd3d7b823243b460fbb58d94e9e21dd6"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.2.0/azfwrmgr-0.2.0-osx-arm64.tar.gz"
      sha256 "4298fb857eb3a5250626df008a3642a46dbf2cf0ac8b0ffb1a1e4817e87d0cf5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.2.0/azfwrmgr-0.2.0-osx-x64.tar.gz"
      sha256 "6743b21da410f08e856bdd3d21c0feb2fbb508654b9278c879b28af430595bb2"
    end
  end

  def install
    bin.install "azfwrmgr"
  end

  test do
    system "#{bin}/azfwrmgr", "--version"
  end
end
