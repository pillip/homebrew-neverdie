# typed: false
# frozen_string_literal: true

cask "neverdie" do
  version "0.2.2"
  sha256 "9c2b14a042de37969c823d55554bb766defd220e8aaa03acba5121155d297137"

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
