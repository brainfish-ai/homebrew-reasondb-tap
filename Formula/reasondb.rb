class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.2/reasondb-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "1b900b07466013f3cc7b8ed3e82f84b94e855c8478c3f7d95d6aec5e90dae130"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.2/reasondb-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "511617d31d88f157e8ef0daa68d5436a14f6e16cd4bff1d162be68ef40a9a62a"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.2/reasondb-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f007ed0a874f12693f0e37a906e540ba09f27e52c0c164c01a5a8541acce62b"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
