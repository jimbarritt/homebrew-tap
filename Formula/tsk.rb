class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.0/tsk-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "570e40f507859995db3ca0960b8af70d9b4461c604da1be6c11aea796b9f97a3"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.0/tsk-0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "68d4f5904932ca31af25e7e45350150639314bd50f9922fbe5bb8d10a1131a21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.0/tsk-0.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1314e4b096f680b6e663dfc938567c21e5376821bf29f3356fec8becfe7afff"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.30.0/tsk-0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10388542ff50be3a8a1d388883fe0263f2864fe666abefd571cf78ada96eb422"
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
