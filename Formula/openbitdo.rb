class Openbitdo < Formula
  desc "Beginner-first clean-room 8BitDo TUI utility"
  homepage "https://github.com/bybrooklyn/openbitdo"
  license "BSD-3-Clause"
  version "0.0.1-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1-rc.3/openbitdo-v0.0.1-rc.3-macos-arm64.tar.gz"
      sha256 "c2ec96eb6a40b7b748ccee873030fac446d94db29cf7b20858b3ecc8d83bcb25"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1-rc.3/openbitdo-v0.0.1-rc.3-linux-x86_64.tar.gz"
      sha256 "fa7ae583796dc979a64eaeb670a06fc7c10fd51bbb12fce5815d66629e18c9a0"
    elsif Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1-rc.3/openbitdo-v0.0.1-rc.3-linux-aarch64.tar.gz"
      sha256 "992586ff89da6dfdb137fd424f651ccedb4a65de0f43d615cda682e31e222dd0"
    end
  end

  def install
    bin.install "bin/openbitdo"
  end

  test do
    assert_match "openbitdo", shell_output("#{bin}/openbitdo --help")
  end
end
