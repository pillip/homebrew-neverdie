# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.3.0"
  sha256 "99d552300601e9eb8384abfd799318189eec5e504af44ab8f2fd29eb4a091b9a"

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
