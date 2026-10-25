class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  url "https://github.com/wahidhendrawan/KalaScan/releases/download/v1.9.0/kalascan-universal-apple-darwin.tar.gz", using: :github_private_release
  sha256 "ed30f7a9680d850d34c4a6df31cee4639d31503f79048695cd5a586f46c33783"
  license "GPL-3.0"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
