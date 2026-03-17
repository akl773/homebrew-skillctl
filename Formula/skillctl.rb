class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.13/skillctl_darwin_arm64.tar.gz"
      sha256 "7128fb27ecdec03e5eaffc2ef1a685d5b826a5e9b041f14769cfd8704af1b9c3"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.13/skillctl_darwin_amd64.tar.gz"
      sha256 "cc68fcbda73425a26bcd8ff0705c7a1184e4abb64a3eb8b82b3284b75558974e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.13/skillctl_linux_arm64.tar.gz"
      sha256 "bd62c64a6d82c06a2f21b4c818390607938ccc8883045af7ef01c16f0fdd39c4"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.13/skillctl_linux_amd64.tar.gz"
      sha256 "ca4cbde2af1fb3b546e947c405571b963cd6d48f894793209f86f5df181aea20"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
