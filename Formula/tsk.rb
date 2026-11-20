class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.79.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.79.0/tsk-0.79.0-aarch64-apple-darwin.tar.gz"
      sha256 "9fa8a1d5450e5ffe77c9c30b3e53197fd39c10d169d946190d8f450b4e5d48ff"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.79.0/tsk-0.79.0-x86_64-apple-darwin.tar.gz"
      sha256 "b6b5e45c04c0f7eb5a7dd0929180b91e46f68d2c9522a42cbf743a6e61dd4f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.79.0/tsk-0.79.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69308d5d5f8747317e40e76b40b6a50e88456c0f6283927d028eb97106e0851c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.79.0/tsk-0.79.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e6c0a4128403b0bc068a12d84ecf61f1438e1224860815afa601933e25c7771"
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
