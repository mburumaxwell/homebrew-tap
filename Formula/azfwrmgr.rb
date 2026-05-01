# typed: false
# frozen_string_literal: true

# name must start with caps and match the tool name (AzureFwrMgr, Azurefwrmgr, do not work)
class Azfwrmgr < Formula
  desc "Azure Firewall Rules Manager."
  homepage "https://github.com/mburumaxwell/azfwrmgr"
  license "MIT"
  version "0.3.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.1/azfwrmgr-0.3.1-linux-arm64.tar.gz"
      sha256 "52e6758eec578c19baebde37b92a2d70db533f57039af435a87cd2d1b1e8f3af"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.1/azfwrmgr-0.3.1-linux-x64.tar.gz"
      sha256 "4c0607dc20eec9072c075bc0bab081272a261c0d56befc3698d0aaaed086fa1b"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.1/azfwrmgr-0.3.1-osx-arm64.tar.gz"
      sha256 "d3cf06cb7d6255212591e53bd14f9f8466410f6975e8505ab66a28f8aaf5b235"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azfwrmgr/releases/download/0.3.1/azfwrmgr-0.3.1-osx-x64.tar.gz"
      sha256 "978a63560b699708dae4c089bcadbe0cef4819a86b53083591dce2ae312ab987"
    end
  end

  def install
    bin.install "azfwrmgr"
  end

  test do
    system "#{bin}/azfwrmgr", "--version"
  end
end
