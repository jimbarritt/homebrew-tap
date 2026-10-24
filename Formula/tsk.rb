class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.0/tsk-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "b935168ca717e9769726d34c826e4bf9024c5966ab6e2954d1e7420f79dda3cc"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.0/tsk-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "02be2b6898d79b372fa8ce7c46879ee2023178aaff1f58b011ec32261858f9a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.0/tsk-0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e9f40d239df39f70373575c59bf85f39507b863dd35f2e8445ad43457712060"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.0/tsk-0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d23dade6ecca99e94e98aad3e51b9a6a74f15ae2029aef213bfda39a7184cf1d"
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
