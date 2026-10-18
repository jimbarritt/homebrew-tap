class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.16.0/tsk-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "67ff05746909aae6b046ca1b0c56ca14f1a651039253e088966cd6a961caa094"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.16.0/tsk-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c78df76d8fbccd15a87977ba9d223342416ab46ef679b8d40d370e512b5c9c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.16.0/tsk-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3da1d8ed793e04ca910ce00dc4426adb325e8853893c51a5062394b4f18d357d"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.16.0/tsk-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a521147ce37163d38c42dcacb7cb0d1bccfb37bc73cb7e3c36dcd59d6063296"
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
