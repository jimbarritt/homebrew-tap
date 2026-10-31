class Ccircuit < Formula
  desc "Draw a service as a circuit board from a machine-readable data map"
  homepage "https://github.com/jimbarritt/code-circuit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.2.0/ccircuit-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7220fa50890c519853471c5edecd233471f3171cdb86894b13cd5f7d54fb2749"
    end
    on_intel do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.2.0/ccircuit-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "94fa896e020a45c67274e8f73148419d721dab64719c6bfc3cd0f337cd8e9573"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.2.0/ccircuit-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23e0bc53f96b4f2433cfcc6d3cb3c14e513c6514887730b3c901493d836c962f"
    end
    on_intel do
      url "https://github.com/jimbarritt/code-circuit/releases/download/v0.2.0/ccircuit-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df36e75fea6c0674f5dc9669641b4eb18f8cb301c5a59a2c2201c09e11484138"
    end
  end

  def install
    bin.install "ccircuit"
  end

  test do
    assert_match "ccircuit #{version}", shell_output("#{bin}/ccircuit --version")
  end
end
