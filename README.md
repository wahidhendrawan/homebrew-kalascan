# homebrew-kalascan

Homebrew tap for [KalaScan](https://github.com/wahidhendrawan/KalaScan).

```bash
brew tap wahidhendrawan/kalascan
brew install kalascan
```

The KalaScan release repo is private, so `brew` needs a token to download the
asset. Either export `HOMEBREW_GITHUB_API_TOKEN` (any token with `contents:read`
on KalaScan) or run `brew install` from a shell where `gh auth token` works.

## Bumping the formula

After tagging a release in KalaScan, update `url` (version) and `sha256` in
`Formula/kalascan.rb` from the release's `.sha256` asset.
