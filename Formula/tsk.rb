class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.63.0/tsk-0.63.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea58166c32f36e75916b25e4531152dfcb94abfcb32b721dd5b2bfb7f1062c9c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.63.0/tsk-0.63.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1c4bf9faf2efb4785a3074dd7d024eedf52c175ac46c7f0de233a03c463b144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.63.0/tsk-0.63.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac4eee16e710ffe75e80aad5a235aa495d65e28b283c7f496951c5d6019c3d74"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.63.0/tsk-0.63.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "581db3918d350882c0354b59813e13d49c89f7932f9eb7e661cc8f3fd0901d66"
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
