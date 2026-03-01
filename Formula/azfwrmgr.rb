# typed: false
# frozen_string_literal: true

# name must start with caps and match the tool name (AzureFwrMgr, Azurefwrmgr, do not work)
class Azfwrmgr < Formula
  desc "Azure Firewall Rules Manager."
  homepage "https://github.com/mburumaxwell/azfwrmgr"
  license "MIT"
  version "0.3.0"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.0/azfwrmgr-0.3.0-linux-arm64.tar.gz"
      sha256 "b18bbc39fc9d7c6a2c62d1b74247b8b1f23706d09ec7c184ced7ae056f96568a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.0/azfwrmgr-0.3.0-linux-x64.tar.gz"
      sha256 "772e295ec100dfb292d42222e4eeee80ea70a83e2e54a3fede0f92974b11edb2"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.0/azfwrmgr-0.3.0-osx-arm64.tar.gz"
      sha256 "51a82f701eeb91652af07acbd530ab4acf37b0a4c212ddee9cc92d36e040ac55"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.0/azfwrmgr-0.3.0-osx-x64.tar.gz"
      sha256 "f09a223220502c7d67f6aa215a9cad2ee89aee7732dbfa743c58c0b3b95f19a2"
    end
  end

  def install
    bin.install "azfwrmgr"
  end

  test do
    system "#{bin}/azfwrmgr", "--version"
  end
end
