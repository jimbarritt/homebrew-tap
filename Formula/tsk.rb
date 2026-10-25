class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.1/tsk-0.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "21fd26cfb67d46cd63f6796a790321500a77cd7ad9eefcc8f00aca1365997155"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.1/tsk-0.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "3b92f5664eb67d45389e76b10400b01cd7e90211c6d8c9d71d7205d52d917d5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.1/tsk-0.32.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12e1862e2b1029c08614dff26575192899aa07929762fd67062bc51e7d3caf8e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.1/tsk-0.32.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1524edae98e938d7d203d0c143b95f4466c0083059c10e966004e5ae01081d03"
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
