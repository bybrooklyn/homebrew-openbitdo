class Openbitdo < Formula
  desc "Beginner-first clean-room 8BitDo TUI utility"
  homepage "https://github.com/bybrooklyn/openbitdo"
  license "BSD-3-Clause"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.2/openbitdo-v0.0.2-macos-arm64.tar.gz"
      sha256 "6f51ac78743beb09058c1350443f1eee582a95d400e774536d92a8f8000e5d7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.2/openbitdo-v0.0.2-linux-x86_64.tar.gz"
      sha256 "fbf40f4798e83fb2d94e9555852c30d3359415da3c50930b2b4c474f82ec2d8f"
    elsif Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.2/openbitdo-v0.0.2-linux-aarch64.tar.gz"
      sha256 "533658243ec56920761e5dd5005de87b3f10fd58a7a6e096beebc85aee8db663"
    end
  end

  def install
    bin.install "bin/openbitdo"
  end

  test do
    assert_match "openbitdo", shell_output("#{bin}/openbitdo --help")
  end
end
