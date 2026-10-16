class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.10.0/tsk-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "c7cb32e72caf4d35e603737817a215b82581f07277af7bd1e29d654f49bcbdd0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.10.0/tsk-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "8cd8b5134d45e4d1dbadb3a2e0743de2827cb951085ab8c5459d302705cf5bf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.10.0/tsk-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ba6c3435915e48908b1a6b0437cbf851cbc519dfcc5c42c31ff72a6fe9e0392"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.10.0/tsk-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "408e303b7b5e43285f983637daa19f9b90010955bb935744a4115267d6eb709b"
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
