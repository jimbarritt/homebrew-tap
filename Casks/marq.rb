cask "marq" do
  version "1.2.6"
  sha256 "236d294ccfbbb0f9fcf7cfe6a350ec303beae50e708031b6d4c0ec92ff925901"

  url "https://github.com/jimbarritt/marq/releases/download/v#{version}/Marq.zip"
  name "Marq"
  desc "Native macOS markdown viewer with vim keybindings"
  homepage "https://github.com/jimbarritt/marq"

  app "Marq.app"

  caveats <<~EOS
    Marq is not yet notarised by Apple. If macOS reports that the app is
    "damaged and can't be opened", clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/Marq.app"

    Then reopen Marq.
  EOS

  zap trash: [
    "~/Library/Caches/com.jimbarritt.marq",
    "~/Library/Preferences/com.jimbarritt.marq.plist",
  ]
end
