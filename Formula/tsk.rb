class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.0/tsk-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8dc852f2ce2160ea49f110197e964383e3bfc317fb8325ce2561540eed89c65"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.0/tsk-0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "801b3e90d135bdb3c5cf8985c5b530197d198d82569c455aa5abeba72daaed82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.0/tsk-0.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ded2f2d9dc3761008c56ef85ed90222582c39e9c711018004a01da3defb7b4a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.31.0/tsk-0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c1c638cae80117a57dd9fccc2bf92e5e1d315bb8fd89e51cdc26657c6f2084e"
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
