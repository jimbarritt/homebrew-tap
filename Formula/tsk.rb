class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.46.0/tsk-0.46.0-aarch64-apple-darwin.tar.gz"
      sha256 "feb10ae3b06545fd3f427a5abec9f4bff195e6739253da7b9bfc870a745e5745"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.46.0/tsk-0.46.0-x86_64-apple-darwin.tar.gz"
      sha256 "9dfbc3e192a7f73a80a7f3e43050f3cb7596feb9612e1a28495f32e9d3e9b21d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.46.0/tsk-0.46.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8cdb9973506f03023a9fe76728779f8eeb70a2fd2b5b890f1d1de535ae84bcd1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.46.0/tsk-0.46.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0eab8d159a6e8aa14f8da511187fdd3ca45300c3b547d000819190fe09097839"
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
