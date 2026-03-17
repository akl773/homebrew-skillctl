class Skillctl < Formula
  desc "Interactive TUI for syncing AI agent skills"
  homepage "https://github.com/akl773/skillctl"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.15/skillctl_darwin_arm64.tar.gz"
      sha256 "d60c2fa17b3359dfa1fa28ee5263f6154d4080a89f62265bf86957ef28ee26e7"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.15/skillctl_darwin_amd64.tar.gz"
      sha256 "57330fdf51a8e446e377208982823f230da68002112533f82b38d4fd659e92eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/akl773/skillctl/releases/download/v0.1.15/skillctl_linux_arm64.tar.gz"
      sha256 "d413924e22999b016976194cc3e93ce9cec8c8f1a6b228c62f3b6f67b89c73be"
    else
      url "https://github.com/akl773/skillctl/releases/download/v0.1.15/skillctl_linux_amd64.tar.gz"
      sha256 "a37cb8cc34328b15dfa90ea7f5300ac48ab36eac115bdbd555398a27c192e3cc"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --help")
  end
end
