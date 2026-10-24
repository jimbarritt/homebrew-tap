class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.26.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.2/tsk-0.26.2-aarch64-apple-darwin.tar.gz"
      sha256 "66c29ddf3c03fba5eb8d13c231f24b8d0d4b82034dd155e02c9005003022b9e1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.2/tsk-0.26.2-x86_64-apple-darwin.tar.gz"
      sha256 "2f00b5dc46a8fef813dd6de1b76fb551a21c620194740a1049793f084bd2e726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.2/tsk-0.26.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae93f3c9fbefa2c208c62cb9b6ee6212c6e98b9537291556c04dda9433be3032"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.26.2/tsk-0.26.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b886320dd684b4dc8739c0406385e2b553de8374c9bc81b05925788a17ce80e0"
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
