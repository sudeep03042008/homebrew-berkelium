cask "berkelium" do
  version "0.2.1"
  sha256 "cc8b8bbfb3e98397ff49f7ea0d4ddcf85da715bce951083f806c706fa5dc7ae4"

  url "https://github.com/kmmohaimenulhaque-code/Berkelium-Neural-Rendering-Studio/releases/download/v#{version}/Berkelium-#{version}-mac-arm64.dmg"
  name "Berkelium"
  desc "Neural rendering studio with 3D viewport, code editor and free AI chat"
  homepage "https://github.com/kmmohaimenulhaque-code/Berkelium-Neural-Rendering-Studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Berkelium.app"

  zap trash: [
    "~/Library/Application Support/Berkelium",
    "~/Library/Preferences/ai.berkelium.studio.plist",
    "~/Library/Saved Application State/ai.berkelium.studio.savedState",
  ]
end
