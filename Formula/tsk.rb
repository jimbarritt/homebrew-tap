class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.39.0/tsk-0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc091f7e7d81258e1fee84f5d986ac63ace55a48d5e6d1eaa21c2047a57f103e"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.39.0/tsk-0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ccea70da4ba0255f9707f6f0f5f4058d4d10770b34cda7566438c1b17cd2a8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.39.0/tsk-0.39.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "301ed578875af8aa972beb06a15b9930303c863c147ed4aceec0f2984a6c6b69"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.39.0/tsk-0.39.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b072fef9c8d23489afe844eee0488a6fda49ec710dbc937485b674f912d354b"
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
