cask "dmucode" do
  version "0.1.1"
  sha256 "049fe3d7af097d699d74ddf70be4ab28c4d2fef94bb75e88fa75b9447bcce412"

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
