class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.3/reasondb-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "6d524c954f72854dbdb0de1ef6e8e3b5ee9d3e8721e15e8a05523c9d5b470c22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.3/reasondb-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09a87a24d776bac980a755417eb8b38ffb3a50b6e650eac21e8170d04e8d89d5"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.3/reasondb-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ec68a4f97fedddcb85c42386dc7855ee507080f889e6ec645c91686606dce96"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
