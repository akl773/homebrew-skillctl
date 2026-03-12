class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.10/skillctl_darwin_arm64.tar.gz"
      sha256 "db80101cdba7a31040cc997d27fb16c78c7780c5771887b0b65b050e4a4408b4"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.10/skillctl_darwin_amd64.tar.gz"
      sha256 "1f07c2464ae27a405a8db92e4ceafd6c3e42eb4aad74b5b0d8c2258ad69e1576"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.10/skillctl_linux_arm64.tar.gz"
      sha256 "64b5702c5d5f346f1d1e537c8347a2fa08ca3a72ef209d13e80e095103bc1332"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.10/skillctl_linux_amd64.tar.gz"
      sha256 "b1b526369fa6377a1258c65ad58598ddd5a9c59cda402ab414e6563719f4c81e"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
