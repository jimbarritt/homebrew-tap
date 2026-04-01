cask "marq" do
  version "1.1.2"
  sha256 "15e1ffe84e4f82d74571a0ee497260dee3defffb81318630f2735982af0084ee"

  url "https://github.com/jimbarritt/marq/releases/download/v#{version}/Marq.zip"
  name "Marq"
  desc "Native macOS markdown viewer with vim keybindings"
  homepage "https://github.com/jimbarritt/marq"

  app "Marq.app"

  zap trash: [
    "~/Library/Caches/com.jimbarritt.marq",
    "~/Library/Preferences/com.jimbarritt.marq.plist",
  ]
end
