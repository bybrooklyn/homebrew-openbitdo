class Openbitdo < Formula
  desc "Beginner-first clean-room 8BitDo TUI utility"
  homepage "https://github.com/bybrooklyn/openbitdo"
  version "0.0.3"
  license "GPL-3.0-or-later"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.3/openbitdo-v0.0.3-macos-arm64.tar.gz"
      sha256 "55257dc614955e566f282e498864e14af90bfba0c4fedf95302d6e85ec1889e5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.3/openbitdo-v0.0.3-linux-x86_64.tar.gz"
      sha256 "5fc11380db7a8ce84e6a2a359b2958c1da97695bb9ac8bdc6f2d2d71368761ec"
    end

    on_arm do
      url "https://github.com/bybrooklyn/openbitdo/releases/download/v0.0.3/openbitdo-v0.0.3-linux-aarch64.tar.gz"
      sha256 "b9fcf5f7d74ddc4a0c66e8769c2d05ba97c3d265a8cc7c1da7c5afef9c51d84d"
    end
  end

  def install
    bin.install "bin/openbitdo"
    bash_completion.install "share/bash-completion/completions/openbitdo"
    fish_completion.install "share/fish/vendor_completions.d/openbitdo.fish"
    zsh_completion.install "share/zsh/site-functions/_openbitdo"
  end

  test do
    assert_match "openbitdo", shell_output("#{bin}/openbitdo --help")
  end
end
