cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.53.5"
  sha256 arm:   "a69b202c7e9af42eab16b85e0bf67f644bb9c46d7947783f68fe6be8cd8e0281",
         intel: "80ad35a8b750101098b6239fefc43a6620a43faa29edb3ad4c2263f37b7a7d74"

  url "https://github.com/henrique-cabral-dev/forkly-updates/releases/download/v#{version}/forkly-#{version}-#{arch}.dmg"
  name "Forkly"
  desc "Orchestrator for AI coding agents"
  homepage "https://forkly.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Forkly.app"

  zap trash: [
    "~/Library/Application Support/forkly",
    "~/Library/Caches/cabraldevlog.forkly.app",
    "~/Library/Caches/cabraldevlog.forkly.app.ShipIt",
    "~/Library/Caches/forkly-updater",
    "~/Library/Logs/forkly",
    "~/Library/Preferences/cabraldevlog.forkly.app.plist",
    "~/Library/Saved Application State/cabraldevlog.forkly.app.savedState",
  ]
end
