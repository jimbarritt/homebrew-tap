class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.52.0/tsk-0.52.0-aarch64-apple-darwin.tar.gz"
      sha256 "4de8485067430db1cf8c50785c50b425ada8062a0a6450211b5f593ed94d6666"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.52.0/tsk-0.52.0-x86_64-apple-darwin.tar.gz"
      sha256 "af68660403d1c3ebf024284dead3caab574ea7cc23dd134d213ef0b75d2ded78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.52.0/tsk-0.52.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "942a422a0319760984bddaf28e7494feb1d3d5761e619bd6efbce3b2b395c31f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.52.0/tsk-0.52.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15b324a9ceecd7f16732a98d6b4b6e64f23879cc35fd6f91f02ea143e812a48d"
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
