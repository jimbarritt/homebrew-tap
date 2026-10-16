class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.0/tsk-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "e45874e0158c76883b09beca93b3187c4ae40cdd54f50281b45e69be1d65d2a6"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.0/tsk-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e3c6a4df47d764269699a5246178327a47887fb2ea861894c8386f440827c39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.0/tsk-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56c420af0642a5b966a8a5b5f11be9edaea1387f74a1da92f1a0f30dabbbb16b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.0/tsk-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d06a71a3b42d89db48034c59a621e3f5a13ca1e65f8e9f41c23d402bc9ea9264"
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
