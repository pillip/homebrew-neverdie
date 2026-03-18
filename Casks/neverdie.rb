# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.2.0"
  sha256 "8f0408c216ba414ef78ab6a05e69d6b7d0dd4007275e97b66f9f6de237ee95df"

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
