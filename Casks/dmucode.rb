cask "dmucode" do
  version "0.6.0"
  sha256 "7e7298e3d876742f4bb7841e0e342a949bf09324c6ba4a9b36267af29420502f"

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
  # The dmucode and notify commands, scripts in the app.
  binary "#{appdir}/dmucode.app/Contents/Resources/bin/dmucode"
  binary "#{appdir}/dmucode.app/Contents/Resources/bin/notify"

  zap trash: [
    "~/Library/Caches/com.dmuko.dmucode",
    "~/Library/HTTPStorages/com.dmuko.dmucode",
    "~/Library/Preferences/com.dmuko.dmucode.plist",
    "~/Library/Saved Application State/com.dmuko.dmucode.savedState",
  ]
end
