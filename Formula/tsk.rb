class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.4/tsk-0.36.4-aarch64-apple-darwin.tar.gz"
      sha256 "0a8cbaa69c2999f9c92c7184dcb6133fd6e1affe4aa9c5b162bdac53e20db242"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.4/tsk-0.36.4-x86_64-apple-darwin.tar.gz"
      sha256 "5d09b992afd8034b762269317688765dcffb1ae5d736f1c0d32f537ff9fc209f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.4/tsk-0.36.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0435687c5ede6c00147eb864d13af6473b211f23fe4505d58f105e59e31e795f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.4/tsk-0.36.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5673e95c436db30fc89c005d2c67f388f000c88da0e094a0fb5e95b0ed2da622"
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
