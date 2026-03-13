class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.4"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.4/reasondb-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "b517c1f7083ed6bf530de8248581426d89abf21ebbed1d0d63b3c59111876152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.4/reasondb-v0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8aa6b48b48d5ccdf7e0abc3fc372a17972f40b93b28a774e50bbc98c858c36ed"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.4/reasondb-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2c1063f80c874e80cf77cb6f414ecd99bbdb4edb67697e84e3f9ca265f5946a"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
