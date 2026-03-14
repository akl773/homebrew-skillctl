class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.12/skillctl_darwin_arm64.tar.gz"
      sha256 "82e91ed693ebb08a2354ff8ca57e37f637473ca7fe771f4c4b76fcc5e2b1d59b"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.12/skillctl_darwin_amd64.tar.gz"
      sha256 "ce93714cbf7cb6a68478a73f3110c140b35231241bed0bc7a27192cb646744a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.12/skillctl_linux_arm64.tar.gz"
      sha256 "87d4bbcfd87703266c0be73859cc7eea5b39754a32df2c8adf865d3827dbe5df"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.12/skillctl_linux_amd64.tar.gz"
      sha256 "d1fed38b3f28042cc0d760fe6520b2960c5945b25557cf38f8129b02f543406c"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
