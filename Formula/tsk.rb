class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.66.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.2/tsk-0.66.2-aarch64-apple-darwin.tar.gz"
      sha256 "91b9c69a105e1cb4b6c720e46eef6ae0211082709fab1b46070c8e43b5725cce"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.2/tsk-0.66.2-x86_64-apple-darwin.tar.gz"
      sha256 "05e758ca3310e12d75c42ed02401d10ec086084e6df977ef904767bc15570e32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.2/tsk-0.66.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13fd79c2330876144816884715fc2dc70ad9356ba7c65cd8e0de5a8b3da8c4c8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.2/tsk-0.66.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "094bb0b09e42cb0ff61e16c227c4b85273e4ca89e22dd5dcf95171ac6f42daff"
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
