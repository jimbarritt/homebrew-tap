class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.1/tsk-0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "2974d638426d193dbd9d30d51d6266b8542d2a20b79e87e35f0f3a1835b3e477"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.1/tsk-0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "cb87ec2cca6ddcfbe17d519d5aa1214638c653db90b14dfb60ac21f8589a4530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.1/tsk-0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78b771cc1dcdfd75e7f1ecaa29866f30b65be9690cad06ba960af07703406dc1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.1/tsk-0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "638d5b191183ab8f8be18ce848f65b1a886a6b0ef1cf69b83d72794af623f905"
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
