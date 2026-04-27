# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.3.1"
  sha256 "aba983a045c9f4fb6e3f4b2ff9333f42f036aa132109494c486f0b5626e3fe58"

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
