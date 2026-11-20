class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.75.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.75.0/tsk-0.75.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8d25083ec125a02c845e10c35cea414611576fa7e902be0d4d2b54e66487f4c"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.75.0/tsk-0.75.0-x86_64-apple-darwin.tar.gz"
      sha256 "14645264bdf7b7ca13aa6bd31e40c456c88c6943f63b7c2525f9dec08f84822e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.75.0/tsk-0.75.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "810766947fbf8b6948d42edbc57652ae956033a3eeb66457ed25ca4a1a018d68"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.75.0/tsk-0.75.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c15e0222bb6d5fc9aa34307bf0739a19da00535281d059a0d1949882e5b130a"
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
