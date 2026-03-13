class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.5"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.5/reasondb-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "568cf59a162279b56b0d3ab2b77faabbe1d0835f64526b1078c2c2417be666c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.5/reasondb-v0.5.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70b1f37019bb009cfe122ef5c91061786e10aea9fcb7475dfff1cf73cba15434"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.5/reasondb-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "244b8f49d91aca28b1a19307bfba3bc9f9a9753d4308ebef880fc9720392b26a"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
