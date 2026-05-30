cask "cantus" do
  version "1.2.0"
  sha256 "97c86c10d478fcfa2777bb9bd092eb17cf7f01e470a91529e93a700d457f2ac7"

  url "https://github.com/manan45/Cantus/releases/download/v#{version}/Cantus_#{version}_aarch64.dmg",
      verified: "github.com/manan45/Cantus/"
  name "Cantus"
  desc "Claude-first, local-first desktop coding environment"
  homepage "https://manan45.github.io/Cantus/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cantus.app"

  zap trash: [
    "~/Library/Application Support/com.manan.cantus",
    "~/Library/Caches/com.manan.cantus",
    "~/Library/HTTPStorages/com.manan.cantus",
    "~/Library/Preferences/com.manan.cantus.plist",
    "~/Library/Saved Application State/com.manan.cantus.savedState",
    "~/Library/WebKit/com.manan.cantus",
  ]

  caveats <<~EOS
    Cantus is not yet notarized, so macOS Gatekeeper blocks the first launch.
    After installing, clear the quarantine flag:

      xattr -dr com.apple.quarantine "/Applications/Cantus.app"

    Cantus drives the Claude Code CLI inside its built-in terminal. Install it
    (and sign in) before use:

      npm install -g @anthropic-ai/claude-code
  EOS
end
