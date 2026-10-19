class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.20.0/tsk-0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce0d5fd7230dc30596108ea9ca7b24241eec4d58ed24185c037fc615ee1ccc67"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.20.0/tsk-0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb2740e75d62aa528df727630d949dec4f5887c02f2276960900421b98d1f14a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.20.0/tsk-0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e141159266ca44628c24ba4211620f50487116a4725c023c80386cb69d28faf5"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.20.0/tsk-0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa6964cce4ee4086eb0741651f735ffc7292c4df683ca8ac0af84f22aa9d39ca"
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
