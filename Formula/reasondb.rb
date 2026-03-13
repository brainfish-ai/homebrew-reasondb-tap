class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.7"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.7/reasondb-v0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "b25ed0d73b7041402b96168f08697757cab224224609762671d8185b0f8af498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.7/reasondb-v0.5.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edb73863f05a438837e1490a334b1c1d006df06a62b0c4b40ba96d123dc36a3a"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.7/reasondb-v0.5.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c7fa0a5e71f7769a4a56af034e61fc750cda969b36f64afa1db1e9cfae2ad64"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
