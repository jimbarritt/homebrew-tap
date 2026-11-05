class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.44.0/tsk-0.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "90219dce273f8ad61e27de6dc646d6333d25cac2e2652c9d31c61cd47a469d26"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.44.0/tsk-0.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe9a2ad9560d1a36961e8c8330fe5ac19ff09a50d37d80d814c556d6a3b552c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.44.0/tsk-0.44.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad611cf087858d765192e6e3d2328b70adedebb1eb920fc646186f85c84d9380"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.44.0/tsk-0.44.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49f87945fdbcaf3f548e0e0b6f9fe2ad95bebc9ffb91fc90487986e506b6fe5f"
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
