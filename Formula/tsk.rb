class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.59.0/tsk-0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "1fcd731029c9379b6baee7eaab99a23471a9203d5ded971cec09c58e81a763a2"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.59.0/tsk-0.59.0-x86_64-apple-darwin.tar.gz"
      sha256 "10c71685dfe30ad79e18abb6c5da66fe071ecd3d0914c04a42fb0f40cf6538b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.59.0/tsk-0.59.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c41d42a62e2d47244a2e1944ec99065b97bfce5da5f40a17861ca784b160d45"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.59.0/tsk-0.59.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0f99a7d6ba793053fe4246ef88d0bed86fece6af34601f0a87f0cabf978c3b1"
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
