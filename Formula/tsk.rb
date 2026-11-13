class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.60.0/tsk-0.60.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac45b67ea62c763ec28b3592d7724b3bd2622fe223dbdbd328ade275016c7cef"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.60.0/tsk-0.60.0-x86_64-apple-darwin.tar.gz"
      sha256 "10a221375a9f19af1adcfe0a0cac161192e54e22ce07ff91a664c2178059e3df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.60.0/tsk-0.60.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57be38b3f8db8811d16f82a079acddeecea88bfa5e9f7559c5c2aa7ccc0d47a6"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.60.0/tsk-0.60.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5976468f31ecbe98d892d3b8aa7a29b85b566e48e0dc48ce176393f7ed39a9bc"
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
