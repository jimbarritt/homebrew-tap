class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.0/tsk-0.66.0-aarch64-apple-darwin.tar.gz"
      sha256 "35687abd30a59619c9366b12c72e6e7a9ca554c360a7df4707c13c66102659da"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.0/tsk-0.66.0-x86_64-apple-darwin.tar.gz"
      sha256 "6ff29f5c24a0a041ba034b2b3a0d764b3f44d691de0adb6bf6d965f19136527d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.0/tsk-0.66.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f0e918a68668ff51c9c2cb37321bb550391431a0a98882710c8b8ee3109fddf"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.66.0/tsk-0.66.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77dbde9a5fab6144da78ed9e5a6b5b992f67489b5c318f0db413aea091b5254a"
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
