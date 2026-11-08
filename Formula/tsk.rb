class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.48.0/tsk-0.48.0-aarch64-apple-darwin.tar.gz"
      sha256 "30dc9208779a7e9ec6c4562da7292d99477650450bb1ab367b5518de96bbada8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.48.0/tsk-0.48.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3970b18ea6bc66144ac173f2ebc70ff04c5671653f5a8969df6b45fe9f56615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.48.0/tsk-0.48.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ed96fb42d9a95d62ac8d354396ffa4def8b0eae7c78c8b31b67b079b3847367"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.48.0/tsk-0.48.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cc12334c5766611f1ed17b8c70da163fe22c82883487c85284a8f58bd0c07cd"
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
