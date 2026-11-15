class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.68.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.2/tsk-0.68.2-aarch64-apple-darwin.tar.gz"
      sha256 "acd2cd03e0497053151d40cc13e255173be1a58150a08a9d69d7e0bcc5a62f56"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.2/tsk-0.68.2-x86_64-apple-darwin.tar.gz"
      sha256 "df35bba23f52be772736de24ffed682f4d8c6e9cd76fe36d44e8d67dd1b99a8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.2/tsk-0.68.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "560eefa0aefea42968969e7bd53721499adaa98729ff288b94b8a96727491137"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.2/tsk-0.68.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35ae99b417d92ad7410cc56a3cdb7022fc206758b70d1d2152d9980317470bcb"
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
