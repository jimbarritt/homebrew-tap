class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.11.0/tsk-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "903ed5e5aa72fe646b6e4d7ad7a51960ea6fc8fe09bde48850e1a1ace161fd9f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.11.0/tsk-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "5977733d1c7fb6f5d36045dd5769a98b2d2bb463eb3ae65cbb71675ddb3de8dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.11.0/tsk-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a741a84d129b3b82510d392761ec548d5428050e261464e7931dcbc839023c9"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.11.0/tsk-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f09e9a7c1e77aa0cd5a229bdc8809f70a22c4dd979d42d39d4c594fb024aeb7"
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
