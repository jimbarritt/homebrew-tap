class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.66.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.1/tsk-0.66.1-aarch64-apple-darwin.tar.gz"
      sha256 "906aab94f4849e8c13a4b5df0afb1c9ef88abd7ec7f112e45466e6e39381b8f1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.1/tsk-0.66.1-x86_64-apple-darwin.tar.gz"
      sha256 "ce57ce597dbc534cd6ca641c2fc581855e17017a7c0e9aaf67770be9c8768bab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.1/tsk-0.66.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e70ce5ad523498b8f282044239b9e2dfac4ed41ad040c4d389823caec4012727"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.1/tsk-0.66.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1911a2672daac6ce72064e3b11c338cc2218401b11b4b8d12ef6940218345512"
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
