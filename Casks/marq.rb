cask "marq" do
  version "1.2.5"
  sha256 "2618d509dd36f69d9e1e0c50035cbeff828a078c760d3eb0493b7945d6569b1f"

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
