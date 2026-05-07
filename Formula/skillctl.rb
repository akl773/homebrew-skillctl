class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.21/skillctl_darwin_arm64.tar.gz"
      sha256 "1b00add166fedf30a2abf30e3ec206986d5ba8f4d3492dc093ad400595b6c927"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.21/skillctl_darwin_amd64.tar.gz"
      sha256 "08e48b79bfdfa6d2ef037c5badcf3f76cd0e30f946c76039ca716e5f73bee243"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.21/skillctl_linux_arm64.tar.gz"
      sha256 "2123c04f65231f0350751d5460aaf4ba3e21f806c3aaba8da4660252b2a856d0"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.21/skillctl_linux_amd64.tar.gz"
      sha256 "cc7ba98d4794b203326645940d3e1b31914da24225a5336bd30fc7584126c590"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
