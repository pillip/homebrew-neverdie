# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.3.2"
  sha256 "5f939b413d0ceab896b2dc7e7cacc5088bf56013f8919485151c44991f9aa0b1"

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
