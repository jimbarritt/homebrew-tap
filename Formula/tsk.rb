class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.87.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.87.0/tsk-0.87.0-aarch64-apple-darwin.tar.gz"
      sha256 "f05c6f1af59dde528d4a5eb244f5f0b1459abb5cc3f72d0cd735e10edc4babe7"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.87.0/tsk-0.87.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c064d5226f487d3e368f04a7defc41d0b4ae691cb349df8c7c8a3b2105c3728"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.87.0/tsk-0.87.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8bb2e3e3b98d7f80ddaf160e0bb2cb17784f3e21b1a7263c02e79a5f8160c34"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.87.0/tsk-0.87.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fbb95b689d16a13d9fe36111cbff77f865adfc5908defe126c0c235420c30b5"
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
