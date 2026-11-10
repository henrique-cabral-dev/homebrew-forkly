cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.52.4"
  sha256 arm:   "1801670a115b515d84308978f40adc4b9ede70ef9752a1a3baa0fe7ea420b711",
         intel: "bfaedb4478c6abba8321cd3ea718147eb35d7b699a4bcdbb4284ad659f92b50e"

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
