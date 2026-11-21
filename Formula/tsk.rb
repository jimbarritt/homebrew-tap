class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.88.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.88.0/tsk-0.88.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ffb4d1e36afa7d8e3044e476d2143798f7756318cfc341bdb912b8e76c044e9"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.88.0/tsk-0.88.0-x86_64-apple-darwin.tar.gz"
      sha256 "45f36d6e04183af901637adae9bd8ff86e68cea208ad3921f7e7d57b74b3c78e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.88.0/tsk-0.88.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ebc904b397577c7a8090bc9e445f5e92bf1d5cd39fd503037fc66d20cbf5be8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.88.0/tsk-0.88.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab95f95afc3fd08aefc0731dfaf51f7e51faf26660f97601c965e6e82b02cfbd"
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
