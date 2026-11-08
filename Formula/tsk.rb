class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.49.0/tsk-0.49.0-aarch64-apple-darwin.tar.gz"
      sha256 "215cec4103e8d1471916505243ae3baf60f0493bea0a2e8d3a54c7af5bc3f3f6"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.49.0/tsk-0.49.0-x86_64-apple-darwin.tar.gz"
      sha256 "db06a7132fb84bcec46f3095da7020709e266012270230b90d42f43c9473e1f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.49.0/tsk-0.49.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5be49f9e29268488eee88665449ec261708665671c3fb88c8ec5835d1625b066"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.49.0/tsk-0.49.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03e0cea834a7fdbffb3570a4ac77169fe9a412317167a295bafb4e46f83756b8"
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
