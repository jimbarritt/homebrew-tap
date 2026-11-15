class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.68.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.1/tsk-0.68.1-aarch64-apple-darwin.tar.gz"
      sha256 "a4ae3b6f14ba4218556cb887765a4b87f44e58294d842062077e96cf5fb584a7"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.1/tsk-0.68.1-x86_64-apple-darwin.tar.gz"
      sha256 "373412a794c95dc860be1740f6b371749a2525940c4db9a32b1a56e55cba0eb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.1/tsk-0.68.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9ca7ca7009890145ab9bbccdfd209084c77c99f50be01d2ad6b268ecd032f56"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.68.1/tsk-0.68.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcd3944a00a317bda00e4f467cb1189c4d2a2d22b054e522fd5b80ee63511f2a"
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
