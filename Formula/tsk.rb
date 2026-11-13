class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.58.0/tsk-0.58.0-aarch64-apple-darwin.tar.gz"
      sha256 "4341c9adc14dab74e7f5ad5681686e689f107af74d4c504dd1dda9cfe0b6ae7b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.58.0/tsk-0.58.0-x86_64-apple-darwin.tar.gz"
      sha256 "83be49337d97dd3f840b27c996f41d55940973178fa60c58b30818a600b98078"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.58.0/tsk-0.58.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad8d07f98b78245be97e61ebd90a4c5e4171a5f074954e7f95947536bc302a51"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.58.0/tsk-0.58.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90e46dc70a0bb76830d0d4de8be659f9b7e072f650755321b103e158f205577f"
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
