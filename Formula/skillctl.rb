class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.17/skillctl_darwin_arm64.tar.gz"
      sha256 "ad252936302ce1ff0ad6545161e6029f1889ca0644c04389184584ce7bab7a60"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.17/skillctl_darwin_amd64.tar.gz"
      sha256 "c5b91532e2ee5071082d916046b39864cbdf85f738c79c82309bb2f2f141ab7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.17/skillctl_linux_arm64.tar.gz"
      sha256 "12002a974d526b49a6a765230afffec84ae1984c5a8b0d62aa48a9fdd359ed8f"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.17/skillctl_linux_amd64.tar.gz"
      sha256 "080b330030981a5e3096f4d05c1d358bf4c41aa8f1ec6eff96c7392615ccf746"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
