class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.42.0/tsk-0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "dec45bf366170bfce9048e4d56f0ee2f9d582e2c134a42979e0c0e08b5acaa90"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.42.0/tsk-0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c467e7bd468ed6c3da1568a2bb42ab426cc3998fa3942be57a9cc328193dae0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.42.0/tsk-0.42.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58ebd20a4c6348d8e80a6173cce1853831f44ce9868c7317f90e87bd90417d7d"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.42.0/tsk-0.42.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6526fd7e4c416c4f72989bfb434dd2a07035174829e40b0f55aae8fda640f40"
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
