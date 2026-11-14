class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.0/tsk-0.68.0-aarch64-apple-darwin.tar.gz"
      sha256 "0fcd7025c359da0cde4b727a075a76e448f5c286a1237921a23851d1842154df"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.0/tsk-0.68.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d88f6a116577beb7caa527cb30f7cfcd71e086346439b39cff7c093b8d937a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.0/tsk-0.68.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fe0e314a0c39f3c64c206aece52e50919fe7c219efc230f6cf31bd8e3f9c96c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.0/tsk-0.68.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d3aa112b2cd08a45a555ba6fbcfec7d1246ba7699708fe0f8f67b16caeb07f4"
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
