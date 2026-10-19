class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.18.0/tsk-0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "88ab63d096768aae2b158b8d74a3df462256afd6fdcfb3de33ee4af3547aaf5c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.18.0/tsk-0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "c587d43b32ef87a6060ce4a8dbfcf105037780e9c8ba99082606bca3c9914c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.18.0/tsk-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e28ccd209b7324a908ed869033f5ff4675c9fe054db0898dd9fb2eafac27ff56"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.18.0/tsk-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b43a82b2413578571ec4d0478a4fff03d611cd1c2d180b0b821732f4c1ed6fd6"
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
