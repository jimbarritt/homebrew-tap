class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.64.0/tsk-0.64.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf0b5c9ecbf2c341adf7c51877ffe9e62604823098613d1b52ab96501c2169e9"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.64.0/tsk-0.64.0-x86_64-apple-darwin.tar.gz"
      sha256 "94008a4352e888c8c7fcc725113f6ebe1f732f3c90e239cd6006d6b19fc9bb0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.64.0/tsk-0.64.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7db8338e3590fbd79df935744d64ffb6b5ac62954b6ebfa78d19aba8e3d40c4a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.64.0/tsk-0.64.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85a423a7971bc8d31f10326cec1496f6725ef88d2e62461935ecc5e7cc9b68a0"
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
