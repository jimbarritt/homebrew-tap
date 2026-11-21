class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.86.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.86.0/tsk-0.86.0-aarch64-apple-darwin.tar.gz"
      sha256 "e605e238ace577ed0dc5a0bdc0e44a338133865756db76a6d6eda3f5e8051dba"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.86.0/tsk-0.86.0-x86_64-apple-darwin.tar.gz"
      sha256 "31887973ed64fd91f87ee5f5983d19a928e3a090f983c7d4fbb24b1016231933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.86.0/tsk-0.86.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ac90c90bd38114266bb59e1b92d5cf1e167ba1a8756c00a00f56186f20eda2b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.86.0/tsk-0.86.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31ab5b625690dfcfb3b15a1008c37d17d107d58981c754f4983196a5a7d1f2a9"
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
