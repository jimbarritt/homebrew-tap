class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.21.0/tsk-0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "490740ab4d3af602e9d891e4792467f8cbfa80b705689091e129c85f88fb6cde"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.21.0/tsk-0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "09b2aa4436310424fd946871161efb09b66c0f92c569b66fd791cbfcce59d2ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.21.0/tsk-0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39cb9666ec56a332c1a9c80dcd10950c105aab4f32bf7b0ad8b324268ac9c461"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.21.0/tsk-0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3a79eafee509d2cd7875d8a4e295d3d406fa88385eac39e2e0bd356ca36d87c"
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
