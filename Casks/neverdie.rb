# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.2.3"
  sha256 "2f0587667543392e7537cd50547b8a7aa71627a146c1d7af8f161f91ea823158"

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
