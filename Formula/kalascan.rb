class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  url "https://github.com/wahidhendrawan/KalaScan/releases/download/v1.14.0/kalascan-universal-apple-darwin.tar.gz"
  sha256 "79a30ce68026cd7f2835efcc11d7683e8e0bc526021cbeb2feb622ba528d79c7"
  license "GPL-3.0-only"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
