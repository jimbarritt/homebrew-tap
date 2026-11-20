class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.74.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.74.0/tsk-0.74.0-aarch64-apple-darwin.tar.gz"
      sha256 "2d0a5e3c55f3f2cebf2ef65330703c1827345e343cb70dc776284d8b52c67020"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.74.0/tsk-0.74.0-x86_64-apple-darwin.tar.gz"
      sha256 "df3e7a4636a9b9d7a855cd6ce03dca738e4afd6ee0a2a9cb3eb049a78b267ce8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.74.0/tsk-0.74.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a38277cf4ffedee0a8efc77f9882a5fd1b5e6ffbc0f55a9cb2af934ea3d13d13"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.74.0/tsk-0.74.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac6991e92f858a3d434593b960ad219aa1144b50c422f0b49eb686203b0bb4f"
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
