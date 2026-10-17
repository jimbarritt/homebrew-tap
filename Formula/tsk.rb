class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.13.0/tsk-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "aae3281ee38669435681f9df613bca0c850a93b2494f912c12b79c513b1beece"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.13.0/tsk-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "499e4dfa5ee0865bcdd21b6a471479253a851e7b541df75f0823ec0b7d41d510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.13.0/tsk-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63de0f9d2f99ff2a29229d16466fba2add2fcbba1547dc08634063651348d996"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.13.0/tsk-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cd86b9de8ab58f42f57a11036e01b270f784b237315a262bde1b748f100f9cd"
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
