class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.0/tsk-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "d003e750a24d3281088896993ace2de97c5ef268a27a083de1acf39f7e6a7133"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.0/tsk-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "e52496ce4fa4fd9f839daf0e27a6f86d71b7675acb4edf9add6d731185b3903c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.0/tsk-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd4c47b4042483208306927bae2540d948ad3e4dda9cbf1a6eace0f1c6c3f0e3"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.15.0/tsk-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0b5df4fdd0026d95be1f3b3caa3760a49b4633f3f59677414842c792bc79808"
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
