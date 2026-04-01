class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.19/skillctl_darwin_arm64.tar.gz"
      sha256 "cd7f421a2b846818e7c1f401bf5892e8a71ee3e2b428221402c2d8d0c02430d4"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.19/skillctl_darwin_amd64.tar.gz"
      sha256 "5341e36458dc34f37ba534021b0cfa85be7e664bef4e91a23c3abb901e108be3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.19/skillctl_linux_arm64.tar.gz"
      sha256 "4073dd9261812795fa6df38e875ea120ef66dbfffefa3a1a2dd75ec8d02c3714"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.19/skillctl_linux_amd64.tar.gz"
      sha256 "e712d7116d25e00061f22d7fda87c0ba72d6c28ab82af336c3aca154444e8352"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
