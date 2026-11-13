class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.54.0/tsk-0.54.0-aarch64-apple-darwin.tar.gz"
      sha256 "13d2b040f3146e7eaca6fcd023b9b26dae68eca3f75c58951a8f317d5046b0dc"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.54.0/tsk-0.54.0-x86_64-apple-darwin.tar.gz"
      sha256 "9699c4c616fb1641bd9c9d41825a4d08016ef697ce5b3b95afe01e19b8f08f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.54.0/tsk-0.54.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9d93e0c3e83afec5cb205cdf313a4876bf07ab422bf7b70388217b9b9e191d0"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.54.0/tsk-0.54.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bcef9712f1c7938b8409c2f1473f339d616e715ad7068d7e772f4d59665775a"
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
