cask "multibox" do
  version "0.17.0"
  sha256 "2709184a1cbea97f47ed87fab8d420ec65ea34e6693cf5e17e7173b7efa6be09"

  url "https://github.com/cola9k1/multibox/releases/download/v#{version}/Multibox-#{version}-arm64.dmg"
  name "Multibox"
  desc "QA 용 로컬 디바이스 테스트 앱 (웹 다중 세션, iOS 시뮬레이터, Android 에뮬레이터)"
  homepage "https://github.com/cola9k1/multibox"

  depends_on arch: :arm64

  app "Multibox.app"

  uninstall quit: "com.multibox.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Multibox.app"]
  end
end
