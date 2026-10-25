class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.0/tsk-0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ba3b0970f4d4fed7e11e6d63ea7522beaf4b07f9e201ea07762274ff84520f0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.0/tsk-0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "92f7b0f21b15cacc80a69c2f27d17390bc5fea46be3b52d503de787ea8a28eb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.0/tsk-0.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da54a6dee19e6d87fdb85c3d714eedbec89310e0cbcaa7fcf550c6182eee0195"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.0/tsk-0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3b23b9963a4df9ee58db0e71e1b11f4e81952960c4afb3dca9c00c6f17520ae"
    end
  end

  depends_on "dolt"
  depends_on "jq"

  def install
    bin.install "tsk"
  end

  test do
    assert_match "tsk #{version}", shell_output("#{bin}/tsk --version")
  end
end
