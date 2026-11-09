class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.50.0/tsk-0.50.0-aarch64-apple-darwin.tar.gz"
      sha256 "640a347145ef2f97c66193e32225b19683f1dc8ff127f0e2d7f0469ce9a41a49"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.50.0/tsk-0.50.0-x86_64-apple-darwin.tar.gz"
      sha256 "42615e4279a1271ec4ff042fbd43ed6bc8365bd230d3d8f606e610dc5bf0773c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.50.0/tsk-0.50.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "488ddb86d758c534ce939797b6c6839950cb029d34b9a27c89b21d1e2d52afba"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.50.0/tsk-0.50.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ef7d04f7a5f5f99676a6a522ad5218a40989977ad5bc3814b16a9cc72bc729b"
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
