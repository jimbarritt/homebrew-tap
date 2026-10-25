class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.33.0/tsk-0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "34c74df051d9bbb58294ddd17b1e2414b65fd8a1fa68361907d00144aa5de2bf"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.33.0/tsk-0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "10a42ae070297d92b80c9ab4c701ed4a0e9b28ab1c70a0794795e39433ccd38c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.33.0/tsk-0.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01f5a747217ee1b5c5574f4dbc6598486250d9b6a0f6d86efbd83aa15ae1455f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.33.0/tsk-0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57ed4fffeab9c816eba880905a1910830b7feeedfe99210f8d3bb72bf857d9e3"
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
