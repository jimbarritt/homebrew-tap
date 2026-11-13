class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.0/tsk-0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "4db5ebb116aaddf7081d2cf51a45dc68c940ee9fce97c8bacbaff1c784817345"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.0/tsk-0.57.0-x86_64-apple-darwin.tar.gz"
      sha256 "22343a26f81e313cd3be7f0de7e033571ab4cf48bfdfcd1f9f900a1992fa3584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.0/tsk-0.57.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7ad9728b921798fd7b891a2db2ede17155cf9ae8729f3dce3176937dc247256"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.0/tsk-0.57.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bbc08072463ac1e1349ef61cf6eef3e690a20568f1d1bef8bf21c87eec3f50a"
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
