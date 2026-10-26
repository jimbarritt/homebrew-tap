class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.1/tsk-0.36.1-aarch64-apple-darwin.tar.gz"
      sha256 "01841ef557f9cb908d956a5280f891222f9bdf74c3dd6f3656469605ae91bd29"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.1/tsk-0.36.1-x86_64-apple-darwin.tar.gz"
      sha256 "7f0488b64502a6fcda0c3c0e09765cc202ec5a47a0ae1fc07d37c1f118c6711d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.1/tsk-0.36.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f79de7f4501945ee63cdcdfd8d37a6cb2d6cb8d561ab3fb5843141b05daa643"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.1/tsk-0.36.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c7068130d9ba299db48bc85dec0dcd8d3951f4a792ffe6ba4b1be97558f311"
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
