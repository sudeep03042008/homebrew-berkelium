cask "berkelium" do
  version "0.2.0"
  sha256 "7633438da0e86d2ffc561edd9d53cb0078fe5b515aecb955eec5bc44eca4b6f8"

  url "https://github.com/kmmohaimenulhaque-code/Berkelium-Neural-Rendering-Studio/releases/download/v#{version}/Berkelium-#{version}-mac-arm64.dmg"
  name "Berkelium"
  desc "Neural rendering studio with 3D viewport, code editor and free AI chat"
  homepage "https://github.com/kmmohaimenulhaque-code/Berkelium-Neural-Rendering-Studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Berkelium.app"

  zap trash: [
    "~/Library/Application Support/Berkelium",
    "~/Library/Preferences/ai.berkelium.studio.plist",
    "~/Library/Saved Application State/ai.berkelium.studio.savedState",
  ]
end
