class Wombat < Formula
  desc "A lightweight coding agent for the terminal"
  homepage "https://github.com/ramsterr/Wombat"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.6/wombat_0.2.6_darwin_arm64.tar.gz"
      sha256 "6cb79cefa74e672c8079da9aeac33db66b1ab9d6a3047f751608453adc1e6e46"
    else
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.6/wombat_0.2.6_darwin_amd64.tar.gz"
      sha256 "e09d01eee3a55be762277b1ddaf434798ad37cb0914f0c6351e25ec23c61fb00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.6/wombat_0.2.6_linux_arm64.tar.gz"
      sha256 "43b61ef01351061f320d44bec418f48635733a25c875ccdf6f02404c7dbf8cc3"
    else
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.6/wombat_0.2.6_linux_amd64.tar.gz"
      sha256 "b5939299c552f6e2622ab2c89da5696d166135a57e343ef9e3fd9378a250fd4c"
    end
  end

  def install
    bin.install "wombat"
  end

  test do
    assert_match "wombat 0.2.6", shell_output("#{bin}/wombat version")
  end
end
