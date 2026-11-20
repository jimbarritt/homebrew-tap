class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.82.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.82.0/tsk-0.82.0-aarch64-apple-darwin.tar.gz"
      sha256 "914e84bc0a144bbe755a190b1cfc6bdcd6e8ca30ef1b4145e02b09e23e432804"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.82.0/tsk-0.82.0-x86_64-apple-darwin.tar.gz"
      sha256 "16aa778859f95a4126ab58fac5163bf726ae1faa5c5bf9b9feb0d02ed27922f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.82.0/tsk-0.82.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0d395605b56563aea17d3d5eee7d9a6c52b68e1d412f7d48d790902884fb085"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.82.0/tsk-0.82.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0593e4c9b47d89729e5bfb031436284b0287fe2d19a4060c9295abb4071cd17"
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
