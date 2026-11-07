class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.47.0/tsk-0.47.0-aarch64-apple-darwin.tar.gz"
      sha256 "1346f52e19e43cc3fa60e02cfcf1a06c07bc782c6329be4779a497f136ebb3ca"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.47.0/tsk-0.47.0-x86_64-apple-darwin.tar.gz"
      sha256 "c33377f119eb874227ce29bfac9646d72a6ae6315602f6f7db388a33de4eeada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.47.0/tsk-0.47.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ebf5e3342c0c5be8b51f95a98a714511f13e2d2b0a66d8f1ea217e549b078cb0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.47.0/tsk-0.47.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4a4a537ccf18f8b6259cc9c5ce7a3ecfb7ba3a14ef1400792aef9b1b098e621"
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
