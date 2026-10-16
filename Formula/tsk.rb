class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.9.0/tsk-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "c275762dc28fb6a340cafad8508de9a5eba691ec7fba6800deac6219615961eb"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.9.0/tsk-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "533d35c0051bac02402d4502ac3addd002dedf87cce816bc077f66902c4efec2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.9.0/tsk-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6858c70576940a95191ab56e209fc7897edeb83c9187d85a2dc6dbbf6d3be45b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.9.0/tsk-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "377cfd14a98cc8b475a91e47ea74a5dcf3a945439e39b39b84e31b3154cdb43c"
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
