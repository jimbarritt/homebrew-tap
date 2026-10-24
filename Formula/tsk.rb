class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.1/tsk-0.30.1-aarch64-apple-darwin.tar.gz"
      sha256 "808b318a60946ea10858c636b10541743e79aa8c10cdf09a4a73e6d77c16238e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.1/tsk-0.30.1-x86_64-apple-darwin.tar.gz"
      sha256 "b4c05f092505d39341ca824a7266278257b2196c1b3ae61ba49d9439bb062557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.1/tsk-0.30.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6db8209f0f4e021a5ad5d5651cda246f5663d647f4d24760248b13d675a992a1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.1/tsk-0.30.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9d727e29b4e4c67c7756f2a8b41c6f5d78cd56c55e68166412e155c106c06cc"
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
