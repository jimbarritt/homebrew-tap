class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.0/tsk-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "71ef6551a8f796bba97264e28bb365ea0bfdbac59b6fb5c26c517915d4c3be27"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.0/tsk-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "af20d875a4cd6bb0aba969fefe99129d309277d771d1867d6e66a78c2617d0bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.0/tsk-0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0640f743606d11343e5c5b5bcc1921a695f9a83fb161c0478f780536ea0f31b3"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.29.0/tsk-0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af4dc58f745296489ce1dbaaacec8d24577f967b02e8e47043e9182ca8a90251"
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
