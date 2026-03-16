class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.8"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.8/reasondb-v0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "d14abe20cf2ee7a0a09498fab9a866f3cf4e9e5312bd23ee68bda86ac099ed4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.8/reasondb-v0.5.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c704cd866229d4020b41a2b4b74593eb71d1b6d8c7c1aff934087d86dad0de5"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.8/reasondb-v0.5.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "596434de754da175f91d4dd7aea89340b38da522793865a58f05185b0e700c02"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
