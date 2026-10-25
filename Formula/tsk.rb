class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.0/tsk-0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "e56633049e40a0449104f43fe15b8cd0bdee815371d73a7fc06ed3fbe986c4c0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.0/tsk-0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "33d9e4f710a83792006217124e241256f17b1df2296f37f93d50567d35b84c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.0/tsk-0.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bf976170014a8c0364270954e01c5db94f89b97f4182dc7c963908643e81e69"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.0/tsk-0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "190d08eaa876b7dc1536b27711fca8a51e4611120f5ba6c33a9495c99a23c41f"
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
