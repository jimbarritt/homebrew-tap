class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.8.0/tsk-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe7b9d575301f7a3b5b2b4a861e3a2e48fc4bc29b792b199b6f2ccd6678c8d2d"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.8.0/tsk-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "736a7b979bb86b1be16741535d00fa22fd60557838001ab85622e97036788098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.8.0/tsk-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59422a0e565d2b5e3d7860206a3da9024304dedfc7e93a2f6a6b800b5d2f1946"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.8.0/tsk-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42235c4231dd9971527b3555e1b5305fb9dd5cb298edef31c315343dd3a7a752"
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
