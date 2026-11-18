class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.70.0/tsk-0.70.0-aarch64-apple-darwin.tar.gz"
      sha256 "0cc450b90f992b551bc6c5450bd963422fbb17fcd8a12dc7e44fb6dd61c533e1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.70.0/tsk-0.70.0-x86_64-apple-darwin.tar.gz"
      sha256 "3fbf2f79cde64e52fd9e1bb464b1701ae7fd1b5e08a9aa936224d199fdb30d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.70.0/tsk-0.70.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06193c1f1ee14f4b7f515b997d0d3dcccef45d984de09f0831737dd2f955ab74"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.70.0/tsk-0.70.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b2e68fe6fa3af57f3d0a2e6707d3cbe62d0deba680e0eab649d9778b1fe0b38"
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
