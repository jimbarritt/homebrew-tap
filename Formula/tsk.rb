class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.25.0/tsk-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "ded1f98701f96a75a78a17b7c9a7fd77074f47ec115dddecf03ebf980686a097"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.25.0/tsk-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "4eeea96b23baf9d0737dd57926c2f5d593bbc571fd1552581c47a42517406303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.25.0/tsk-0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9064432d83cc234e6601d6fe348d9ffe7f3941369790456824f21e4f2e006db1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.25.0/tsk-0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42955e55f3d4d896cc1f4aedb31de6a8b289c131b5a55ea1c68221e0dc34547b"
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
