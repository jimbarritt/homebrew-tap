cask "marq" do
  version "minor"
  sha256 "8586bdc36955d736c71e430d309e947592696743ddb645ae704cf7099ce087df"

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
