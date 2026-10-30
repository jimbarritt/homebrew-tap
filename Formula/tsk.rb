class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.37.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.1/tsk-0.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "ace28c8bc9eaa69b2b05de1c4de275d9a33df25027d765bf664941afccb18a19"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.1/tsk-0.37.1-x86_64-apple-darwin.tar.gz"
      sha256 "d605c4fd8b7440521114621820655f5c48bd8f78bf5641b4e82c1fff35028650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.1/tsk-0.37.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "676d86fa1c93093e34c9ec9c02a21b78bb4d405f89a263fea33caa9438ce0336"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.37.1/tsk-0.37.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36ab05e98107fc7c7654f818f47ee46ea687751fba750e901b31aa2314e67d7d"
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
