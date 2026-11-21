class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.84.0/tsk-0.84.0-aarch64-apple-darwin.tar.gz"
      sha256 "950dd107a2a6633ff5c442d9db1b2031ef5bb923951ffd0b0b6f706934527904"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.84.0/tsk-0.84.0-x86_64-apple-darwin.tar.gz"
      sha256 "49c271e4691feca59ab9c3ea7494849af5ede9176534c9de618f5a70d8b3342b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.84.0/tsk-0.84.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4996fa4e3a6df2cdd8626cc250a1c12a343c8b28cb0d86af0b1c494d1fd7389"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.84.0/tsk-0.84.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "139237b83eba629216ffe6c9f70eb6a2e743a83bc5026fd3f6676fce5e5158cd"
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
