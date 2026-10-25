class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  url "https://github.com/wahidhendrawan/KalaScan/releases/download/v1.10.0/kalascan-universal-apple-darwin.tar.gz"
  sha256 "4176f21634e2119095d3e465164b0064d7ad6044e58a6f140e3f3f08979bf915"
  version "1.10.0"
  license "GPL-3.0"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
