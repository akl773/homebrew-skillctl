class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.14/skillctl_darwin_arm64.tar.gz"
      sha256 "c6419d9f763524728bc4b11b8f9ff9a148cb9de34532eadc70c554d8af9e6beb"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.14/skillctl_darwin_amd64.tar.gz"
      sha256 "3f9998856bf986a409c7e1e079e14eed67a2cba4877c6930c7550888eb79153c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.14/skillctl_linux_arm64.tar.gz"
      sha256 "ddf47f7597303ca0a37a266de9d10be1944a831b5bba4f414fffb878b1fbebed"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.14/skillctl_linux_amd64.tar.gz"
      sha256 "273d377ae2f9a0aaf25e9df0f86a0b8c5a79cdf62670b02e3c66880dd40c85cc"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
