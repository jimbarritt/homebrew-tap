class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.1/tsk-0.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "63eae213bddf094ebb3f8b1976e27d0bb55949316d5ea7302ffb1877af673b8f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.1/tsk-0.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "000e6578af83c6b081aadd9479a9cf95a7f61bb8074220f833976d60912f2dde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.1/tsk-0.26.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13b04bd7c13993d6594dc59673c126b048e1fb9ac1f0d8cf147d49540c87e29a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.1/tsk-0.26.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b744639d45d32b5238aca1bc34987aa9eef9bdde626dee14429318d76c81356"
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
