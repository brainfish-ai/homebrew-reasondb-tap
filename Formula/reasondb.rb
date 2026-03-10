class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.1/reasondb-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "a7eb2b7355c20540de506c6216e90464d21e2cae20accd9b7dd73225a42add95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.1/reasondb-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4aa89803726e3c451cdffd1e1a402288c0760f716f9aa1338024a7ecf2e5d992"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.1/reasondb-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2e0e3e5ab136a2c0b19827bd4d5fcdaa170a073aeb817dc121ae2ac2da88d3c"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
