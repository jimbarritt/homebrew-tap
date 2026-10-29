class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.5/tsk-0.36.5-aarch64-apple-darwin.tar.gz"
      sha256 "2d0f3ecd483b52922c78134a8c0d46e4aa1857a6a18b5a73d1b14d6ebc73d30e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.5/tsk-0.36.5-x86_64-apple-darwin.tar.gz"
      sha256 "2fc1ed707c77e676d515853e4620025320cbd6422e4b8d8eba3c464aff96afb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.5/tsk-0.36.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2b637fdbcce0d743f47586259ee3eb18c12f43c7e05d38a75b70864704b6add"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.5/tsk-0.36.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6553c4def29c1ecd2aa963a537949dcaee8aec8ef91ed952def4df4e959bc574"
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
