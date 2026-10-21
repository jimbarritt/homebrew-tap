class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.23.0/tsk-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "979f8ca1e1aa35a78f705355d76eff7ac8234cecacc5806c7b5c835684a3493f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.23.0/tsk-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "b5faf6643a14a670c97b4a90edb2a2a58ab1d53a645524ce84c63822650509fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.23.0/tsk-0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72c900d11836dd67cc11386eb33892588929229ff7fee5437fe98f45989d894f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.23.0/tsk-0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c157799d239c598bd0678ca9ff4adc9763b5bee28e276601f3afd7757ad98905"
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
