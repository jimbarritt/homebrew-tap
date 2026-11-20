class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.78.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.78.0/tsk-0.78.0-aarch64-apple-darwin.tar.gz"
      sha256 "a6130f34a8028243517d1fcdea0c1a1d1e28ebd87d98fbcba85bf2b663cbed86"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.78.0/tsk-0.78.0-x86_64-apple-darwin.tar.gz"
      sha256 "b7a1b830ce0206d52073e38b0a51fe4f6a503d3eca8af0405c1de7a6108d0013"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.78.0/tsk-0.78.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e7b905fc836edc5d9642a832beb5a754b7d8b5ce6302034336faeddc62e48f3"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.78.0/tsk-0.78.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db75d66c78a1f3806ede3b019cc7b145cd69cc62a0568b999d9c9db81571db9e"
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
