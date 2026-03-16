class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.10"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.10/reasondb-v0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "cec59a3c65c96e14ebbc5e08ece5aea1a7b9ba2cde13554dc6c929c55cdbc41f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.10/reasondb-v0.5.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "181bf04ef7d4ec51a98b90a5b533b83c0e78ce382ad1e8960a5ab9b5f303a7a3"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.10/reasondb-v0.5.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a90203eb813bc97185657603f63ed5416376a27661a6094a584efd16de1adc73"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
