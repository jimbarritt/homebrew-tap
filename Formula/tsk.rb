class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.35.0/tsk-0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe10c8c52c176b7eb57ccf37f29843b2b7b9138bb340ce7a73416b092716020f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.35.0/tsk-0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c1ce3192ead1123a1be508d01d79bbcca1e469bae399076dd6ebc19d44d2671"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.35.0/tsk-0.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7388992675c5cad9253f3b47e2d30fb0a7686528ad0b23024cad7f23ff465d2d"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.35.0/tsk-0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33d4175149f8159cd5056ccd8832bcaf76f949f5463ffb8181a5ad7d7359000f"
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
