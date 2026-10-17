class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.14.0/tsk-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "801f7d3f1f406c6b35544aa205cb4407c2f7033564f9327ef9c83aef494b3ff4"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.14.0/tsk-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "3c4660ed8eef47ba4eceaa5d6a4b268ac950c9f17d4ada8caf2a14270a4f14e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.14.0/tsk-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "048d89ed65367a6d2315fb34eb7c08968e8843eab4701fc3b22ea6e6b8e415b8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.14.0/tsk-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93df6257bc0620b983b864dcb8dd1002f79f42b43ae857bea7f75f7603746d33"
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
