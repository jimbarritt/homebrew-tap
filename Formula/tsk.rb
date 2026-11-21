class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.85.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.85.0/tsk-0.85.0-aarch64-apple-darwin.tar.gz"
      sha256 "4156a1359f38e9e5ad06f9a5114feb8e8d29afbc3c2d794de37873fb65850914"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.85.0/tsk-0.85.0-x86_64-apple-darwin.tar.gz"
      sha256 "327a1fdb7bfea16966781e5add9d08b76caae5ea0b6c5ed0421b5dce4ae4319e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.85.0/tsk-0.85.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97621e7e1c439c5a0a0f30703e3f39db2578f65843de1789de9a16c2bac623fa"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.85.0/tsk-0.85.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15a07b4f4dc4fec591e655066ac04b6e9999ca7e41e1d648886debc24c6698bf"
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
