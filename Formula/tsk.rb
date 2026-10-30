class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.0/tsk-0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "a68efc2b27c410a05d2e10d676f4be658ed22ac5319facaea94f8a2f2016e03b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.0/tsk-0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "84329e5acc72d21ff411b96a2f4c0b9895118c338fed8eaa0d5adc42c40d3049"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.0/tsk-0.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a2dbceb8955181a95214847983b6c51a4286d575386b227d612b63ae2d42400"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.0/tsk-0.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da2eaa136ecbeee471fe3f4e3bbb5e4fef06a4e9612a748e0e541f11fb5097fe"
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
