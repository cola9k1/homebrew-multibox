# Multibox

QA 용 로컬 디바이스 테스트 앱입니다 (macOS, Apple silicon).

- 웹 테스트: 앱 안에 모바일 웹 브라우저를 여러 개 열어 화면 사이즈별로 한 화면에서 동시에 테스트합니다. 브라우저마다 쿠키와 로그인 상태가 따로입니다.
- 앱 테스트: `.app`, `.ipa`, `.apk` 를 iOS 시뮬레이터와 Android 에뮬레이터에 설치하고 실행합니다.

## 설치

Apple silicon Mac(M1 이상)과 [Homebrew](https://brew.sh) 가 필요합니다.

```bash
brew install --cask cola9k1/multibox/multibox
```

## 업데이트

새 버전이 나오면 앱을 열 때 `업데이트 가능` 창이 뜹니다. `업데이트` 버튼을 누르거나 터미널에서 직접 실행합니다.

```bash
brew update && brew upgrade --cask cola9k1/multibox/multibox
```

## 안내서

- [설치와 사용 안내](docs/GUIDE.md): 처음 실행하면(iOS, Android 준비는 앱의 환경 점검 탭이 안내), 사용법, 자주 겪는 문제, dmg 로 직접 설치하는 방법(부록)
- [릴리즈](https://github.com/cola9k1/homebrew-multibox/releases): 버전별 dmg 와 변경 내용

이 저장소는 배포용입니다. 앱은 Apple 의 서명을 받지 않았습니다. Homebrew 로 설치하면 설치 직후 macOS 가 막지 않도록 처리됩니다.
