class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.55.0/tsk-0.55.0-aarch64-apple-darwin.tar.gz"
      sha256 "220f674d82170b2bd56c1315761447fb3942d7b311072981b29a80d1e9914a89"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.55.0/tsk-0.55.0-x86_64-apple-darwin.tar.gz"
      sha256 "d33e254b506e26f5b2178b41757781a4951af9a9c7e14e871e3612202cef4616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.55.0/tsk-0.55.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03f855f2560fb9bb198d2d3f319b0804c7b2150b54a876d94c8e92f35e088a09"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.55.0/tsk-0.55.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "001e1cebe15119a15e94b9d2e50cd7f85fa0f1bf185fafe514d93617c07f2cc1"
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
