class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.69.0/tsk-0.69.0-aarch64-apple-darwin.tar.gz"
      sha256 "52bd253127932d50cd089747032b4d422a74eabf0862b8a72c7b8481215c9f76"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.69.0/tsk-0.69.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a71bf1273a2853021a552414e9117127c22749582355ed45e71c1287dc50e92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.69.0/tsk-0.69.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ddb635faaa47cb69f46a7639f6c9abba1447a66e4e1e1c2fed9d080c5c2f6cb"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.69.0/tsk-0.69.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "974fe4e2cca295bcbeddb005d0f6a417d17b83b6cb3a5868c292ab040734a370"
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
