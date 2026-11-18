class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.72.0/tsk-0.72.0-aarch64-apple-darwin.tar.gz"
      sha256 "04ce7a929346f4ad630c6ad1f8efd338ecf6bc3db999d6f1013ade5d89490272"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.72.0/tsk-0.72.0-x86_64-apple-darwin.tar.gz"
      sha256 "2adb0f32360cbd7bef07484b266cb96c058ed396870bff4eba5c21995652aef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.72.0/tsk-0.72.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85a1c6505ba6ee644557fe5d568c04463a04415b51cef8681d6415c3c5a8005a"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.72.0/tsk-0.72.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bfda636a49dabd957f4ec2a017686e10745ab79c33d0d3f8be59d348c4df55e"
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
