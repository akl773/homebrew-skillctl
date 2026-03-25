class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.16/skillctl_darwin_arm64.tar.gz"
      sha256 "a9ae791b97f72899b2521346a21190dec462cab18ee52e2969caf4075ce637fa"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.16/skillctl_darwin_amd64.tar.gz"
      sha256 "c3acdd7e8b445230646cd9eea118c880d2692ea0f8f57aec2a4e49e72a04bc7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.16/skillctl_linux_arm64.tar.gz"
      sha256 "a3dc1790f951f724acff8acac2eb764e4c210251828c50f950b3dcc08dd23464"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.16/skillctl_linux_amd64.tar.gz"
      sha256 "90f672c954f0c22d442f708693e0afd59e0d05e4a072f05c82c192b5e8b6f4cf"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
