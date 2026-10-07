cask "multibox" do
  version "0.9.2"
  sha256 "2a57c4426217e16fcf22548663f5c1522155133146ce87d72a92c8eb80fd7799"

  url "https://github.com/cola9k1/homebrew-multibox/releases/download/v#{version}/Multibox-#{version}-arm64.dmg"
  name "Multibox"
  desc "QA 용 로컬 디바이스 테스트 앱 (웹 다중 세션, iOS 시뮬레이터, Android 에뮬레이터)"
  homepage "https://github.com/cola9k1/homebrew-multibox"

  depends_on arch: :arm64

  app "Multibox.app"

  uninstall quit: "com.multibox.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Multibox.app"]
  end
end
