class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.19.0/tsk-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "17a82887284c45df50000f60877df82aef4f9eb8d8b31aa088c347c64009d395"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.19.0/tsk-0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "e157f91f21e712a7675d0950015524b8cf8d4db4cea8f9ebcb2fea1b767e69a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.19.0/tsk-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c92da1e466440a9fbad635fc554efd6cf6e4f809ddbc51b4d3fb26c448cbf727"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.19.0/tsk-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5da027b898893a78da0633c562f91156fb59419d7cd0b56a3d0e28c4ba02515b"
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
