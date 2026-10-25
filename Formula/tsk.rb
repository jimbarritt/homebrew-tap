class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.34.0/tsk-0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ccf46c352539a88afcb0b34bf45b60cb55cb5fa69f9f7bf7d2d15fe4083d964"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.34.0/tsk-0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "3c15397560a5952653c5f7aa16e7daa62ea2a935b87e5920ea8cf05935d749b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.34.0/tsk-0.34.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dd7769737c45aa96bbdffbb9120b984c3b0cfc4baf7a50814c196fd6ff02e67"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.34.0/tsk-0.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d462df1966068a6bf1a2afb05daedba8f0ecd93846f1a9640f0f534e3923d68"
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
