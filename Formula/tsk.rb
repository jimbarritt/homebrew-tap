class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.68.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.3/tsk-0.68.3-aarch64-apple-darwin.tar.gz"
      sha256 "6e492b286716e8efee26fbcf375ff87b360a8d1295c3b5a592e6a353af3fe67f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.3/tsk-0.68.3-x86_64-apple-darwin.tar.gz"
      sha256 "3dbe1001148e4c5b03001470d00f97183e2329772c1ee48dcc170bf931fd27b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.3/tsk-0.68.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3222c6cb78fa4089159990875c7642e60344b9c822fa6be918dfc8168adac072"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.3/tsk-0.68.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aae5ecce6ad78684b36fa7851d1415972f1a70b24c12b78a8f74ec24c2c05141"
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
