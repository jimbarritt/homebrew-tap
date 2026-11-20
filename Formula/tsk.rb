class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.77.0/tsk-0.77.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1734805713461ca41a80f00626cdd15703c8fdf6b2937d1ee0637ea575a7d3a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.77.0/tsk-0.77.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b3193db841efb42ef7bdc0498d2952ea97b117fe990dfcb350bfa285215e67f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.77.0/tsk-0.77.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "054fe9bc4662da87b9d5983a457f2158afb4d62ab4a84058f62749e9824657e2"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.77.0/tsk-0.77.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d6f78ff42bfce9d8e0202a7646c508a60401eb86ffbf63be09f76554808619c"
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
