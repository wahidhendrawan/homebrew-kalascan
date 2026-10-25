class Kalascan < Formula
  desc "Security & malware scanner for Git repositories and IDE extensions"
  homepage "https://github.com/wahidhendrawan/KalaScan"
  # Private release repo: set HOMEBREW_GITHUB_API_TOKEN with `contents:read`
  # on wahidhendrawan/KalaScan. The token is sent on the download request.
  url "https://api.github.com/repos/wahidhendrawan/KalaScan/releases/assets/674379989",
      using: :homebrew_curl,
      headers: ["Accept: application/octet-stream"]
  sha256 "ed30f7a9680d850d34c4a6df31cee4639d31503f79048695cd5a586f46c33783"
  version "1.9.0"
  license "GPL-3.0"

  def install
    bin.install "kalascan"
  end

  test do
    assert_match(/kalascan/, shell_output("#{bin}/kalascan --version"))
  end
end
