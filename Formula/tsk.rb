class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.83.0/tsk-0.83.0-aarch64-apple-darwin.tar.gz"
      sha256 "ab5a7d22f5eb53c3ff2de6685934afb77a39582c3ddbf5cdbc3b7152c3a6e313"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.83.0/tsk-0.83.0-x86_64-apple-darwin.tar.gz"
      sha256 "a5af587a74d3827688661ac1ef3b9e7a5a350d969f36a3d05ca0df74eb671b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.83.0/tsk-0.83.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6141de1d1b4dd0c20aef5aa4272b4a2e9a0897fe18c3395db54d769bd322d425"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.83.0/tsk-0.83.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "426b40e2c23d0b432e94492eabd9ca9e4798b0ae2280d5b56b784d392e59660d"
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
