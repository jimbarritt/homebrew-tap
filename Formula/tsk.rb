class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.43.0/tsk-0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "e685a6e7d0d417b8764c224356f870dcdbe7db13f9e21af2f3bcc48a652033a4"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.43.0/tsk-0.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "e6910b148a4aed32b578d177e0883cadaae603f063d794b793121a2c1444cb94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.43.0/tsk-0.43.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c8b392d0565e25b97563f089f3bf690afd7c8ddc09bdd04ec1df06cfef2f0ce"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.43.0/tsk-0.43.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aaa58ba645f82be0035ce08164c921f7918f70879c6523cd3cd86cb921bc8c03"
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
