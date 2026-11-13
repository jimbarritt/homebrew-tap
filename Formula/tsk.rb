class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.53.0/tsk-0.53.0-aarch64-apple-darwin.tar.gz"
      sha256 "30e74946c2680a84dce9384585f958c5b9994944b9970f922bb9fbecaa96edb8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.53.0/tsk-0.53.0-x86_64-apple-darwin.tar.gz"
      sha256 "48e1073429e1eee0843d06a2451bfa4e491a960b21c7a9b59e55d8a6c3c92586"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.53.0/tsk-0.53.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c673b224ee485a3a761ca7d31e19796c21b1a04d6878504b8953424f5a00dde1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.53.0/tsk-0.53.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71dff81d3253e7aee4377dd87283708414d82e69431503d156536d1fd3894104"
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
