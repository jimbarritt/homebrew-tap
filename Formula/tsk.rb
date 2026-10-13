class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.6.0/tsk-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b8e8fdc1de4618bd169cd73ccc213f64c28bfb5ecde31a8aa05cdb6e394160f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.6.0/tsk-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "665b8d988865fda7d55960a146e1c3deef73547a5ec4f69c01b27ab033125bbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.6.0/tsk-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc2617b0475d4294bca516680204a19365ea90c6e4c7fa67f369cddb5dc88b4b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.6.0/tsk-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f336d66b9d5c2296e97865f19c98602cc8d874cd0c2e0e867ad19848358d920"
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
