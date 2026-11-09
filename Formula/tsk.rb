class Tsk < Formula
  desc "Missions, threads and a Dolt ledger for agent sessions"
  homepage "https://github.com/jimbarritt/tsk"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.51.0/tsk-0.51.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c39f3d4ae21f6003c835d24b92d8626a60347cd5372ef522bc9d76d59453aef"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.51.0/tsk-0.51.0-x86_64-apple-darwin.tar.gz"
      sha256 "0131cc56d3f68b162c88943d0eb28fee73df2488d4d48aff70759daae1c802fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.51.0/tsk-0.51.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b61c0f0c18f8d3ef2ab49a2f38a183c468de174ea374fe27c2c19f65c77ebc8"
    end
    on_intel do
      url "https://github.com/jimbarritt/tsk/releases/download/v0.51.0/tsk-0.51.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c5888c00f370534008e3d6bed07931f63307df6c10e6f3f2bc8e343738bf49f"
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
