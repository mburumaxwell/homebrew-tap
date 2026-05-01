# typed: false
# frozen_string_literal: true

class Azsqlidxmgr < Formula
  desc "Azure SQL Index Manager"
  homepage "https://github.com/mburumaxwell/azsqlidxmgr"
  license "MIT"
  version "0.3.1"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.1/azsqlidxmgr-0.3.1-linux-arm64.tar.gz"
      sha256 "b3219ab9b74e0dc0f5242161e9288481098435ff6fe740db8b450c0ac0099916"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.1/azsqlidxmgr-0.3.1-linux-x64.tar.gz"
      sha256 "80f14caaeb395b15ea98b693136a93e2f4638480be8b3eae7b81224fd9346117"
    end
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.1/azsqlidxmgr-0.3.1-osx-arm64.tar.gz"
      sha256 "c907ddb8563af5addf6725cfb3fbd8bc46a4f94cb6d3fdf8568f40a4b0efb2e0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/mburumaxwell/azsqlidxmgr/releases/download/0.3.1/azsqlidxmgr-0.3.1-osx-x64.tar.gz"
      sha256 "3e201cf55a03e66283c88dbd15b1300943c79965c4c26444d4063c3abcf30112"
    end
  end

  def install
    bin.install "azsqlidxmgr"
  end

  test do
    system "#{bin}/azsqlidxmgr", "--version"
  end
end
