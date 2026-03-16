class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.9"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.9/reasondb-v0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "3a208eac5eeb753c4d337225f3371eeef9451a535a7b8bccb9730d9c7d33e3e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.9/reasondb-v0.5.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f05cd7781abd954723832ce2fe2ce3abd86f0a66649dc5292f40a1f803ec2e54"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.9/reasondb-v0.5.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d99c0ee2aedc20c332ff210ec8be307f9b87ac3a70e5e3ba95d4d6cb4bdcafb6"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
