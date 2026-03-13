class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.0/reasondb-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "5bf61a4c0fd51922471d62ec2c99530b6a06e9d1ecc34c51dc8c83227d40591a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.0/reasondb-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5106c3ca99800692555bb89f5978e4c2540dbe2e44d90d258f973c28a2e6f92"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.0/reasondb-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1112bf492cbaf831dcbb66f139ccce4658d89a23a175ddf5d40358bb9ba7a1a9"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
