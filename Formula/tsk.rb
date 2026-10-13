class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.5.0/tsk-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9889fc9214694e5f44ef8e1c2938bda7148d91ce583794b85cc6377af6ea2ce"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.5.0/tsk-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "1e578b02924c2082bc68778c846cc32f88be3ae9851c5c2f7ea84eb418fa16da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.5.0/tsk-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88e949f412ec92560ee3d9fdb030a768ac847e3392d16f1da1bb1a1c16969812"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.5.0/tsk-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5829e9c13560958ce97ebfdceb9d19eb9b5c0cd19a80b142d14cdb50bde90c40"
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
