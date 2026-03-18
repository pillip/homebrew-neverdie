# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.2.1"
  sha256 "4aa7482ee7d5b10b9ea291d753fbaddffe0803df292413a73e1aaf4ee3ac00c8"

  url "https://github.com/pillip/neverdie/releases/download/v#{version}/Neverdie.dmg"
  name "Neverdie"
  desc "macOS menu bar app that prevents system sleep"
  homepage "https://github.com/pillip/neverdie"

  depends_on macos: ">= :sonoma"

  app "Neverdie.app"

  zap trash: [
    "~/Library/Caches/com.neverdie.app",
    "~/Library/Preferences/com.neverdie.app.plist",
  ]
end
