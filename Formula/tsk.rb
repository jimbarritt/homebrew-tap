class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.67.0/tsk-0.67.0-aarch64-apple-darwin.tar.gz"
      sha256 "321a05d90293dedef1dcf4effad368ccc5bfb74ca89d0de7e86afc498961de22"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.67.0/tsk-0.67.0-x86_64-apple-darwin.tar.gz"
      sha256 "15791fad763283a394d1de65e83aaad7acedb06f4d3a6fed07444ef21073eda8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.67.0/tsk-0.67.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0240fa9356735983b7fd166f009c77f9c7f9e4ec60f8970f2c5be1035a13ff54"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.67.0/tsk-0.67.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "757a1af6b898cb1c5cfa18428f5a3b815a6886215407e2c7170ead0cbae47cf2"
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
