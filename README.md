# kihyun1998 Homebrew tap

A [Homebrew](https://brew.sh) tap for [kihyun1998](https://github.com/kihyun1998)'s CLI tools. (macOS / Linux)

## Usage

```bash
brew install kihyun1998/tap/jtic
```

Or tap first, then install:

```bash
brew tap kihyun1998/tap
brew install jtic
```

Recent Homebrew refuses formulae from a third-party tap until you trust it, once:

```bash
brew trust kihyun1998/tap
```

Update:

```bash
brew upgrade jtic
```

## Tools

| Name | Description |
|------|-------------|
| [`jtic`](https://github.com/kihyun1998/just-tic) | One-line CLI showing how many lines you added/removed (+/-) in today's git commits |
| [`just-shield`](https://github.com/kihyun1998/just-shield) | Pre-execution supply-chain scanner for GitHub Actions workflows |
| [`gltree`](https://github.com/kihyun1998/gltree) | Issue trees for GitLab trackers whose parent is the body's first line `Parent: #N` |
| [`just-fetch`](https://github.com/kihyun1998/just-fetch) | Fetches every git clone in a folder, shows how each stands against its upstream, and fast-forwards the ones you pick |

To add a new tool, drop another Formula `.rb` into `Formula/`.

## Auto-update

`.github/workflows/auto-update.yml` runs hourly, polls each tool's latest GitHub release (public API, no auth), and regenerates the formula's URLs and SHA256 sums automatically — no personal access token required.
