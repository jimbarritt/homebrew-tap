class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.40.0/tsk-0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c806eced10e47174b6ce12706ac7fc0bc8209f28ba6339224cc94ae41c25f43"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.40.0/tsk-0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "f6765bb507e6c00d50d112f5f71bd90d7ff1120e2da50768cade3b7b33797f81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.40.0/tsk-0.40.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca75391a378f1bddc423bd05bf51b0f789810464f55f91f6fac4080979e413a0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.40.0/tsk-0.40.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bb871e58f51bdeed905b3a80d11dca85b10ba44353228dd838318bd84c54be1"
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
