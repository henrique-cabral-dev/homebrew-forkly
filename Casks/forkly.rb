cask "forkly" do
  arch arm: "arm64", intel: "x64"

  version "0.48.3"
  sha256 arm:   "dfe9b262541a06dfb66398defcf4031e7988cdd56f4ecf2e2551d2c0596a79be",
         intel: "bf085a83ee5844f7045942a13ec16f9a9e0bca2ebf2d1d9be49f5eb2f3ca6c18"

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
