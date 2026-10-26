class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.3/tsk-0.36.3-aarch64-apple-darwin.tar.gz"
      sha256 "fc6f29202f77a2672194b8edcceb6f1a87c13fe3eef87422722be6aff8c05091"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.3/tsk-0.36.3-x86_64-apple-darwin.tar.gz"
      sha256 "f39b77524c60fa8001c4ba521ecaee34696103c538025082e06d65bb1d8a5ab0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.3/tsk-0.36.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e943bc6c591885264d0080bcc1f44f0e779d0479677dc6727ff106d4de14fd6"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.3/tsk-0.36.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "080af225e7d3b2761045d01d60610b9f4b12643282341c0e4ba1dac65a45aa2d"
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
