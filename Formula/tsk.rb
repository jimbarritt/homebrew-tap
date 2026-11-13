class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.56.0/tsk-0.56.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6e7c30911c63986948914a73f3ee52e37c8950a76c6a635d25bf6f3a84539c8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.56.0/tsk-0.56.0-x86_64-apple-darwin.tar.gz"
      sha256 "2748b6ae82d5a08db8cfb08775ea7ae5eebd202890eadac65fa9051b8720b57e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.56.0/tsk-0.56.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "514753fe67031530a5088d3610e4d6b4c59724534ed5167b4fd68c56bef68e4e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.56.0/tsk-0.56.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0d78d222cb6480dc8e29e794722fa9497c6db334d47c42189fb72684e7d0c2e"
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
