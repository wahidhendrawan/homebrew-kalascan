class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  url "https://github.com/wahidhendrawan/KalaScan/releases/download/v1.12.0/kalascan-universal-apple-darwin.tar.gz"
  sha256 "8ee96f0d2383aef46835c8963830ddf0174c03c6545f776dfe7018a1a40df253"
  version "1.12.0"
  license "GPL-3.0"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
