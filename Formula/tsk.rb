class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.73.0/tsk-0.73.0-aarch64-apple-darwin.tar.gz"
      sha256 "b66b89ee4a61598c3ee69659872f4fc06eaa4c3c7733c66d443063ccc05d8ccc"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.73.0/tsk-0.73.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c5dde087c8f30367b4052e2cc66ea07a4788e69faf1a3fa85a56b404086fb33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.73.0/tsk-0.73.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edc6742bdcec36b96ff5ad6c1adc0c9b1453b56f3f4f63c267b12b49264beecc"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.73.0/tsk-0.73.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1908fd638941311419ea242a5e263804dcda0990ef229e43cf550ae1ce3f95e1"
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
