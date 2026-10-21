cask "dmucode" do
  version "0.5.0"
  sha256 "972702d3fd70f643dedcbd7bd35da93828db545c452297199c0528d35e96f8ac"

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
