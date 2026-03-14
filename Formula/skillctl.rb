class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.11/skillctl_darwin_arm64.tar.gz"
      sha256 "9865bf8031c9da436ffb6ba6914f8095bb68de5a3b757f4fbbf596a03d9defe6"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.11/skillctl_darwin_amd64.tar.gz"
      sha256 "7f8a090d0e9313cdc8fd613567ae1bf831730384fb562bd0936f0492b2fd2676"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.11/skillctl_linux_arm64.tar.gz"
      sha256 "88d84d66df5c58b467ccbab5268f80427c6463915640c26a3438c4a61e42cbd5"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.11/skillctl_linux_amd64.tar.gz"
      sha256 "4951ed39869b5a746670c1ff488e120e8f32a43f47202b04f12eacfd902e40c3"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
