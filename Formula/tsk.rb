class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.27.0/tsk-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "e55e469150396091726168a9b21b95ec1535da1bedad29004a19a95a35dd1b34"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.27.0/tsk-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c468784d41b52d7658951d1a58c518dbe8ad6930e7ee69baf4cd07b2b813a61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.27.0/tsk-0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fe363870a373d3a1eab2989da0822d931ab5436ecce3591d044e4133b6b7422"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.27.0/tsk-0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d75b71e88bfe3f8bacd26054ff3073c60df8f862ace6c33b2bb58c8b11cc537e"
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
