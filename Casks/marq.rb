cask "marq" do
  version "1.2.9"
  sha256 "c750d17507e8e5d24e7b25e2c13dc1eeca841e51461e53268bf09153f27f1637"

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
