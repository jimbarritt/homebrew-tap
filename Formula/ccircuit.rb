class Ccircuit < Formula
  desc "Draw a service as a circuit board from a machine-readable data map"
  homepage "https://github.com/jimbarritt/code-circuit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.3.0/ccircuit-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1565f1b6df5874d80e4c95527873559362e4b4f4920c6cd254e1dc47e4bad8a7"
    end
    on_intel do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.3.0/ccircuit-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "6a33ce1953da784285d41f80be2611227cbf886c6c1420a8f72eeffb23a29b0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.3.0/ccircuit-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02c7be5ef0392c934f1fa08ff5f0ae0a6a16f5e7649131c73d5515e1445bcaa4"
    end
    on_intel do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.3.0/ccircuit-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a3a88ad45bb32804720ce4f2183e96d27ca7bb7d018a1ffaf32850e9b4c7b5c"
    end
  end

  def install
    bin.install "ccircuit"
  end

  test do
    assert_match "ccircuit #{version}", shell_output("#{bin}/ccircuit --version")
  end
end
