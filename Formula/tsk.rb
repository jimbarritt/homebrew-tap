class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.17.0/tsk-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "17070a1f44ce196d28f62f75b151f621fda5d4af048ea3097820831783b47870"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.17.0/tsk-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "6d8290f62355db2fbe69e012f7433af2371def7b28cbfea02e345e2ed03d4efb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.17.0/tsk-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "240fc389808aba12b4180ce7f12574cb7e0364c4debf6974dbfed7aa03e83b89"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.17.0/tsk-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "817ddcd0c5b5415da26cef9fffc767eca3363fb5c542284630d057cd2272ff4b"
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
