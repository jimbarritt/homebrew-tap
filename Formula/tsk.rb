class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.4.0/tsk-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7e077baa175feebda4146372be832db44f7407c54a4b9ba3a7426fd204836625"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.4.0/tsk-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "1eb7661d4413de744d7202d3bfcadafe3fbb319a708cc109ee02396c042a5f9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.4.0/tsk-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2f70ae364f7c24838defab3cf6cc4251b6573cb425ddaea78f94a21b32dbc8f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.4.0/tsk-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "015587db10eef0df81b8f2c945c0b87558f5f7b2758a682c1e8883c49d1bcba5"
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
