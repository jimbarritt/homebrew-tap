class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.28.0/tsk-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "f49dc2f437cad8809d7a5826756f1f14e498e1527108f1dd52713f2ff8ac5c45"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.28.0/tsk-0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a9222ce30062c625ef8560009866677ebadddbf4c246896fcc500d9cc381f23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.28.0/tsk-0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a80ec0c91c14625daf3fe9fd3dfd06c65c4b576fa74cd6f6822dc032cb91639"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.28.0/tsk-0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76c00fcca471429a31404618d690b089863d522e2f8559d25422725df46c221d"
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
