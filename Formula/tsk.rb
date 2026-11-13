class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.61.0/tsk-0.61.0-aarch64-apple-darwin.tar.gz"
      sha256 "b94f56a3e79b6755019d5ece54c57067268d307f0ace822921db343818865e7a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.61.0/tsk-0.61.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1ba9bb66a6374a8b27af728d694e53dc377b9dcce452ff8a78c9a4d2ec7f507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.61.0/tsk-0.61.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16db90fc727b7eb5d54000f728761b77ab3e5eabb37d81e2dcd21e5d204b2a7a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.61.0/tsk-0.61.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e48e0fcfc0020b788d254bdad4de78aa5000c7ef72d748d47fd0c3edb1b191be"
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
