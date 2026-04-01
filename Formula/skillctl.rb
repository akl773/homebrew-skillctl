class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.18/skillctl_darwin_arm64.tar.gz"
      sha256 "43e2f7cba21c226ba2cdae133bdcd9437509166005688adad63319281c6c16da"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.18/skillctl_darwin_amd64.tar.gz"
      sha256 "97e85bc17b1142508f45916032147262eb0c5f96b85c08d54ab26af3abec994b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.18/skillctl_linux_arm64.tar.gz"
      sha256 "1df546db70dfd6e6fc475702878259010fa98e98725bc406c0c894afd4509dbf"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.18/skillctl_linux_amd64.tar.gz"
      sha256 "df57dbe484aa5ff1f3dc4e4c7b7efc6f8204e4609803250ddf8b2890d1e9573d"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
