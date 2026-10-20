class Wombat < Formula
  desc "A lightweight coding agent for the terminal"
  homepage "https://github.com/ramsterr/Wombat"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.5/wombat_0.2.5_darwin_arm64.tar.gz"
      sha256 "482eb939618ce34c419a17e396caeafc1b228d3369c2ee2a23e5133b17512fbf"
    else
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.5/wombat_0.2.5_darwin_amd64.tar.gz"
      sha256 "927df90ea45396385974c0a1352579730777ffaf7fa5943956c796cfcefe26d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.5/wombat_0.2.5_linux_arm64.tar.gz"
      sha256 "8e209b2c80f69ddf31b2f5ea9749dba28fcffbd831902f8f80ebded150cd14cd"
    else
      url "https://github.com/ramsterr/Wombat/releases/download/v0.2.5/wombat_0.2.5_linux_amd64.tar.gz"
      sha256 "4f7c223e91614f50e14f5b201f9dcdbf0039e51e2173903feea39b07be68979a"
    end
  end

  def install
    bin.install "wombat"
  end

  test do
    assert_match "wombat 0.2.5", shell_output("#{bin}/wombat version")
  end
end
