class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.1/tsk-0.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "41afbdcf7d54719c6a4fa02ad288f5f8980fd949451f4df42d62f548bb561d09"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.1/tsk-0.31.1-x86_64-apple-darwin.tar.gz"
      sha256 "d8ec101677395bfa061deff5304165374ace29a9a3722990324d7db3a962ce94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.1/tsk-0.31.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "941e41e2d036036292d3f9ddf219d313dfdd5a2247469a04aece528559dd90f6"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.1/tsk-0.31.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c860c5f41e8505b1950b56158529e8c30dab3011a2b7db0f6a925751f0d95e7"
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
