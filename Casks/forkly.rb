cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.52.1"
  sha256 arm:   "379507eafc05666d032596e2954dcc37d011fbbb7dade36115447f00850975da",
         intel: "59052891d0d81d9716eceac3583a68a4a3cd8ddb28c8009074d79f1c5b90f5e4"

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
