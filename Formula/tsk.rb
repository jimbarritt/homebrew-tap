class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.22.0/tsk-0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "f50d5c2ed901922e4c3af65d09a627049e9d8688c7656c10c904b4894bd42ace"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.22.0/tsk-0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "916c7b20562e6d853c2adeb689a2aa2b713111ce5edad54d4697a421678a172d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.22.0/tsk-0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2685f5ca6ef9c6eed3e13012ea3b9485987b312ee9cb30f236293bed2c9e9f67"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.22.0/tsk-0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f00df56b0f87d25187b3c1ad55e8d32874f18e0be33768676d28e098396dafe"
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
