class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.71.0/tsk-0.71.0-aarch64-apple-darwin.tar.gz"
      sha256 "95ff5cb222a08291c4f6d53a728b1965e29416812ad2a949c8f4611060b5835b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.71.0/tsk-0.71.0-x86_64-apple-darwin.tar.gz"
      sha256 "67b6ea4bdd4598d7dafa5997ba70a98195358e0160c2961e09885a6b37ab4e86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.71.0/tsk-0.71.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a2307b4a7774dcaa66068ce4b03e8857f2abf629878bf38eabb0488e8e20e32"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.71.0/tsk-0.71.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c862ca0f145f90e5e8128b64e230030327429453c8039cf8780bb02a186b4ffb"
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
