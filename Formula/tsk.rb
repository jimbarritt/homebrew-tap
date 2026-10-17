class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.1/tsk-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "31be0962be5fd04af9a5d0c1bafaf6a3db586f9305ed677fc187ad85f9a494ab"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.1/tsk-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "46eef7dc7503db2699ef38d583662c259d13da07788268d90da4e82c06438021"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.1/tsk-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c437b95376f0bd97d339cf6aa048252050456dfa8ad1331a6bf1f36e5b532cf4"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.1/tsk-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8578bc407ed6a787ec444a29740456ad80bbcdbe9d17302e5528fda7be01cd77"
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
