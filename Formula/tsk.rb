class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.65.0/tsk-0.65.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e03a7dbb383838f21acd72ec6763836608a8f95b497113f192d9758efa040a2"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.65.0/tsk-0.65.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa9044836a450612decef007ca34f69f49479e104eb2f20f5cbfb0d145a9f152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.65.0/tsk-0.65.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57927287752420769456a3f2ea79bafc6f0019e2a2ff6d8f5299272064a9ccaa"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.65.0/tsk-0.65.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "435f286fa96ccd7db11b73f1f720d287373a0e551bbe6213a1fae2f41c33bee6"
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
