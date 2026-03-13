class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.6"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.6/reasondb-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "4601a95be283102b2c49149555d9eda5e055dc0bb0e1192ad9af32c64c5a2615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.6/reasondb-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b00ed0e4d3ab695cbf066fa3e8bcde00c71d39c835fbb5ea94efd45b19d72aa"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.6/reasondb-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74c6a9f4fc5f83369fdaa4f486b77a848f62006138f6ad31523b048b00cb7da8"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
