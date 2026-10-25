# homebrew-kalascan

Homebrew tap for [KalaScan](https://github.com/wahidhendrawan/KalaScan).

```bash
brew tap wahidhendrawan/kalascan
brew trust wahidhendrawan/kalascan
brew install kalascan
```

## Bumping the formula

After tagging a release in KalaScan, update `url` (version) and `sha256` in
`Formula/kalascan.rb` from the release's `.sha256` asset.
