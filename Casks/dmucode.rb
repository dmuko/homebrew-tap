cask "dmucode" do
  version "0.1.0"
  sha256 "e1d00e1cd3ac6fd59f8aa174914ca0da9d997eeeb8a8a44ef6a13c020dadb323"

  url "https://github.com/dmuko/dmucode/releases/download/v#{version}/dmucode-#{version}.dmg"
  name "dmucode"
  desc "Terminal for tmux sessions with a sidebar, built on libghostty"
  homepage "https://github.com/dmuko/dmucode"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "tmux"
  depends_on macos: :sonoma

  app "dmucode.app"

  zap trash: [
    "~/Library/Caches/com.dmuko.dmucode",
    "~/Library/HTTPStorages/com.dmuko.dmucode",
    "~/Library/Preferences/com.dmuko.dmucode.plist",
    "~/Library/Saved Application State/com.dmuko.dmucode.savedState",
  ]
end
