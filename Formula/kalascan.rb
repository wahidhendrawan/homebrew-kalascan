class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  url "https://github.com/wahidhendrawan/KalaScan/releases/download/v1.13.0/kalascan-universal-apple-darwin.tar.gz"
  sha256 "726487c959e3c46490b21f104d73ed5e9dba6e94dade082f40a99677571af03e"
  license "GPL-3.0-only"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
