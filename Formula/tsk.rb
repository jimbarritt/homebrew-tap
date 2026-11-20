class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.76.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.76.0/tsk-0.76.0-aarch64-apple-darwin.tar.gz"
      sha256 "df0ccc45ded5774a93c18fdb361a9cd9722001a2c903fb1dc5a8f4b38a8b4e4c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.76.0/tsk-0.76.0-x86_64-apple-darwin.tar.gz"
      sha256 "79f66781132b61972dc7ada11fd400ee0fa2492e4c7adf7ce4709278d11d63bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.76.0/tsk-0.76.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d9e30ca286e939e8d926058ac8eb7a18491219ccc00358e7f1f08a358f7b66e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.76.0/tsk-0.76.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2691156ae1020890188b5ce1c30143a7c81517abaa4938364d4a77bda3d8cf6f"
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
