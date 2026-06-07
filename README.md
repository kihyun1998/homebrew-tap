# kihyun1998 Homebrew tap

[kihyun1998](https://github.com/kihyun1998)의 CLI 도구를 위한 [Homebrew](https://brew.sh) tap입니다. (macOS / Linux)

## 사용법

```bash
brew install kihyun1998/tap/jtic
```

또는 tap을 먼저 추가한 뒤 설치:

```bash
brew tap kihyun1998/tap
brew install jtic
```

업데이트:

```bash
brew upgrade jtic
```

## 도구

| 이름 | 설명 |
|------|------|
| [`jtic`](https://github.com/kihyun1998/just-tic) | 오늘 git 커밋에서 추가/삭제한 줄 수(+/-)를 한 줄로 보여주는 CLI |

새 도구를 추가하려면 `Formula/`에 Formula `.rb`를 하나 더 두면 됩니다.
