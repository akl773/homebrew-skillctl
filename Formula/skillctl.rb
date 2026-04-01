class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.20/skillctl_darwin_arm64.tar.gz"
      sha256 "b36fa1f0c2ee059671aefaab62f665f52898ea6a4dc827a785e5c79d9a7db44d"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.20/skillctl_darwin_amd64.tar.gz"
      sha256 "9db8699cb98f47db0a424c4a88e6ac9594b2eb53f1512a9e6e3ffca65e75c0a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.20/skillctl_linux_arm64.tar.gz"
      sha256 "482a7f7d2762008f0d2d3e48f02362252875acf0869d8d24ae07bf8dec79677b"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.20/skillctl_linux_amd64.tar.gz"
      sha256 "f03e3f3fd05ae80b3ca215aa96751ea431885343fedb87bac8a39c817b89a657"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
