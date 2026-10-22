cask "dmucode" do
  version "0.6.1"
  sha256 "6c45d456b09e0746354a3764a2688ebbeaccc9800543a15c2023dc9bc722550e"

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
