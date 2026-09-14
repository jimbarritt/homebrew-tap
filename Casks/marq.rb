cask "marq" do
  version "1.3.0"
  sha256 "8c54cb1ca2df62266c3b3d6713fad8b1c85f9bde18ea2ea5134ce15729466316"

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
