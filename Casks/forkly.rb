cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.53.4"
  sha256 arm:   "6b36c85b195515a384889d499be55fbc1ee0b4d77afdfe5d47e4a3960c12f7c0",
         intel: "fe0069c5a638c3375ce963251c90d4aa1a7fb3bd7dd424e26cf97b553e2f4f7a"

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
