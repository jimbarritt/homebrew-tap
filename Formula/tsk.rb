class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.2/tsk-0.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "9b1c390749c4a39ce4294d8b42a8e6672e0201e37f279bfb542111cf09a3d594"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.2/tsk-0.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "dad23d3641c2e8e6a4fb7b26ea330fc24fce3d3c3b0c9cb922b9e79ede7802e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.2/tsk-0.30.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25dec882a24b726e33190d9232634ed98679cf08f15deef5a0592fd375364575"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.2/tsk-0.30.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "425ac841cdcc86b035afbf0b92680a992b51ff7db2c6c42e330987b19f1589f0"
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
