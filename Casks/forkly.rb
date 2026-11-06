cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.49.0"
  sha256 arm:   "0e0d758f3c2af3baa081bc8ca4897110ac2994cc3b4394020f07b2b6d53931d3",
         intel: "1f17b68b9355bffc8b333e93cdb8cff4dbcf668e2bd9bf6cb34ebe48c6ae68c4"

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
