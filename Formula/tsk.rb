class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.80.0/tsk-0.80.0-aarch64-apple-darwin.tar.gz"
      sha256 "5724ef67198cac5a1157ca753d2b5a2a369b9962d34c4f3d3127f424f0b643b2"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.80.0/tsk-0.80.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c6c106dc6ed8a047e4becbce4da03e1881470b9062320e5ad25b2dcfc3afcb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.80.0/tsk-0.80.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2942ed4ba6675f9fde4f6fdb2b6642a04192f35ddf1b5ec8ee084d5ebcec1bc0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.80.0/tsk-0.80.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0475e432b99c509a289f403baeed61f35463a8feecc765caf29366c292ac4da9"
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
