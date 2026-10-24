class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.1/tsk-0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "c08822e2459a36231395cdfd21d9855c4cd503f0a40ab5b6c77c3b3bb621d219"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.1/tsk-0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "85b1f17b9c138089eebac7e26d2eff3d4b06d70f7178e6bb1a3af933ad6cdf3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.1/tsk-0.29.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "827fa497338dc43f4481fee348003a75f2b5c165a2c1bd05307d1cdfa67659aa"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.1/tsk-0.29.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bea49ad56cbd4ac00f4c1a79370356003277eca8fced19a4fb1a8b57b80c35c"
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
