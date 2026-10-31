class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.41.0/tsk-0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "a83574eca6a0d5f0e6e11f2a88cd475665ee12e83409fc1ecddaeb401daa1e83"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.41.0/tsk-0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "c453b6d37344fc515641d438e30f97a0ccc8a4c68beb35050cd02869fa8f316d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.41.0/tsk-0.41.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "152a3188958ca97c490fdf9c7d1ff67cb7a0d1edec505b31896a6f137f25e37c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.41.0/tsk-0.41.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53ec3623a4b44ab9ddb5264c69d5b79667ec8d547a237704cb1fd93a7d12dd65"
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
