class Openbitdo < Formula
  desc "Beginner-first clean-room 8BitDo TUI utility"
  homepage "https://github.com/bybrooklyn/openbitdo"
  license "BSD-3-Clause"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1/openbitdo-v0.0.1-macos-arm64.tar.gz"
      sha256 "80e61ccf7a3b1db57de22f74979fabb77239d6bf56884514d70b9743398532bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1/openbitdo-v0.0.1-linux-x86_64.tar.gz"
      sha256 "025cc82e9638c9feb46e9c029cb85bbb4f7e5bb36757fc3f9b32ba5942096f1f"
    elsif Hardware::CPU.arm?
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.1/openbitdo-v0.0.1-linux-aarch64.tar.gz"
      sha256 "6aa5c9244c393a85f00a4dd0acdf9210f88a5c53baaed2dfea91d1f9b434ca9a"
    end
  end

  def install
    bin.install "bin/openbitdo"
  end

  test do
    assert_match "openbitdo", shell_output("#{bin}/openbitdo --help")
  end
end
