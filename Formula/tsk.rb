class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.24.0/tsk-0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea66fc9a91f306eaacdbeaa1bf1b798abee5222b61965a02a5e119726fd01c14"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.24.0/tsk-0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "8812162d6c5e52b41f019a8c3acf7dcea1644c108f97dd66396c08af3e1f749f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.24.0/tsk-0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e938b553b96350a062564ed99017d2be1fd4cea7cefb1ef88e3864ed499070c1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.24.0/tsk-0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c122b624e2840b419f9aca64dbd262e7d72ff1939852b4f2cc7c431f6122073"
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
