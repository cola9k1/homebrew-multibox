cask "multibox" do
  version "0.9.0"
  sha256 "c7984c8773f36c7018b351dc3a41b29bf74110b68fdafb2462fd0ef3e97f9f99"

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
