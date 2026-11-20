class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.81.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.81.0/tsk-0.81.0-aarch64-apple-darwin.tar.gz"
      sha256 "536626977129cbc0d13b96d0d20ef7e2f6c0bdd370dde5b5b0f8cffb5107d6ab"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.81.0/tsk-0.81.0-x86_64-apple-darwin.tar.gz"
      sha256 "c2f71f64c9827d0376cfb891ab271c940b1f9ea1f3575e9f44527e97306a8b22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.81.0/tsk-0.81.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b79cfbc1fa5cb7f0205f144994ca5660bf6908a96562e4c46786def59334a87a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.81.0/tsk-0.81.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7fc5d7635410937744900ce506b1e8f48ca29216f5202298cc0a3610d3fc638"
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
