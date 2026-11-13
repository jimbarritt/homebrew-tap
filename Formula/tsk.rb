class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.1/tsk-0.57.1-aarch64-apple-darwin.tar.gz"
      sha256 "bc536a13d923858f3774c1bb31be5ac37ace1d92bb42200cbaded97e23572d1b"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.1/tsk-0.57.1-x86_64-apple-darwin.tar.gz"
      sha256 "618169620ab239b3d23ce83b3828d5d3eeb8b837da5dc985ee614e68a00cbb91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.1/tsk-0.57.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0e8b5c90182af3a041c332b8be39d79140d689136275fb04786dbd0ba7d959f"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.57.1/tsk-0.57.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0440efe7ed513bf237e91b793c1a8a593eb8f3bc57f915f32dd989607ba2a6d5"
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
