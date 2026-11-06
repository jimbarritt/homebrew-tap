class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.45.0/tsk-0.45.0-aarch64-apple-darwin.tar.gz"
      sha256 "f59e963484b838be339c35b930165c23b95d749a4358d7da9953b583f81356de"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.45.0/tsk-0.45.0-x86_64-apple-darwin.tar.gz"
      sha256 "10c62404a5a1330325fe51529b89fd4001f4bd981492b36ba18289c295a9bb36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.45.0/tsk-0.45.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24a038315dffb37e2b999686c840de2584174e55346ea0ab3d6ec4806fa01209"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.45.0/tsk-0.45.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baf266b9895fbfb2e1d4587a11f3d5a25e876cde237b638bff22b3d1dfa91e63"
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
