class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.4.1/reasondb-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "204a6010d56fad11321db6f3ba83ff8de341d3746b0b3d3feed1f4e1b64c4e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.4.1/reasondb-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f323618c17fbc2a43445d41003abd1b6f53dc82949adf571d8538cd109a957e"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.4.1/reasondb-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "766b58db94b9ca1a0c38b1d44e2e2e3b07c7f77d19729a32ea1621b9450397fc"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
