class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.32.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.2/tsk-0.32.2-aarch64-apple-darwin.tar.gz"
      sha256 "4c09f345099da683f0e98e7f87bdba3fb2edb3d116e67078108fc690e07ba2b1"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.2/tsk-0.32.2-x86_64-apple-darwin.tar.gz"
      sha256 "dac3e05c0f47ca9c39a1ec63348bcc44adcbafe0c104b34a44e7ba75085c3417"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.2/tsk-0.32.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fefc767eba668c5b23df8d2e2dee3a3bb59efa0ce2900dd3df0ac11bad70874"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.32.2/tsk-0.32.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9e2a2406b402fc9b3c8e74b9a715623908946ce8b0b453ed270ab46025d6700"
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
