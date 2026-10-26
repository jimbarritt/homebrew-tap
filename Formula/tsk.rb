class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.36.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.2/tsk-0.36.2-aarch64-apple-darwin.tar.gz"
      sha256 "9e1fdb0f370131a91179d990dea0c6e9cc593611edd4e5d26712153ec5b54863"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.2/tsk-0.36.2-x86_64-apple-darwin.tar.gz"
      sha256 "67b4485cd2c65b98b18ffbd7b3bb179a6d371c275709c7378ce0b5775fb6d317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.2/tsk-0.36.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "377bff6ce493c38c69a5014a7f16f8a431c98a487914a6c9abb8610da5e1657c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.36.2/tsk-0.36.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7090a9b2cb0c63d55cd91e69af53e6d4edbed119ef412ea40cc715b2e3208a08"
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
