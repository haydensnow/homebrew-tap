cask "surfboard" do
  version "0.3"
  sha256 "b997ca5b3143e0d884a5b219f66ae2390c97fdab4368aaf69ebea3eedb8bfb22"

  url "https://github.com/haydensnow/Surfboard-releases/releases/download/v#{version}/Surfboard.zip"
  name "Surfboard"
  desc "Arc-style sidebar for Safari"
  homepage "https://github.com/haydensnow/Surfboard-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Surfboard.app"

  zap trash: [
    "~/Library/Application Support/Surfboard",
    "~/Library/Caches/com.haydensnow.Surfboard",
    "~/Library/Preferences/com.haydensnow.Surfboard.plist",
  ]
end
