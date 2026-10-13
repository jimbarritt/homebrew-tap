class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.7.0/tsk-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "adbce0e8a6a84715fa6000a08580b7a2471278ebe8ebc1c12012742a36426f11"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.7.0/tsk-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ffd6a57a6ee8b04767a27b76ed23e91d766311664af49a0ba51b2d3f84b468b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.7.0/tsk-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63a827e61a27814d340beb2ef01a6345dc45bbac39f4acea6d8696eac8e937df"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.7.0/tsk-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53d225818336397ba23a4ffd0bd3d7b4b57fb841319b40fd619fad968daf7404"
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
