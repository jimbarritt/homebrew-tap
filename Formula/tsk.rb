class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.2/tsk-0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "0e9fb721d7ea6e3d8d73921c29cbaddce751c0c1044d2a7287f69a44e983caf3"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.2/tsk-0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "ffdf9b871ee71dbb5cc5f41b553df0dccd6ad5ad3124ec863edaf57e0939fc98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.2/tsk-0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af4c961325750e7e201b946221c9f8c57912c93fb91b4529758d9d4b7cc7d718"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.12.2/tsk-0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "584b1ede4c54ee51d50208bfb757ab7eeb99f9aa0b7bdc8f2854113aafbc593b"
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
