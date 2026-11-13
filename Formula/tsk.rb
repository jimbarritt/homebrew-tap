class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.62.0/tsk-0.62.0-aarch64-apple-darwin.tar.gz"
      sha256 "abe74576cfb8d615b0ef10e2b12db5d3a660feaf8bfaf18b0beccde970e8208f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.62.0/tsk-0.62.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1bf12dad8cae967d1daab773090d137703e4e5d5584431738564abd3635a30d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.62.0/tsk-0.62.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adcb74669538f52680619f045e382c51bb41f5e42481214f5a1db56f2d4b23b8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.62.0/tsk-0.62.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a31507387c639eea4ebdf4af6e6fd8592a47160405427f497fc0249c6af6ae5"
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
