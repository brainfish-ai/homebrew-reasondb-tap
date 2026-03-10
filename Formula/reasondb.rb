class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.0/reasondb-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a0d500bb7698c48b571930a2ca311eee98343bb32a0c2dbb4e430ac2d233d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.0/reasondb-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ebe1fd230e624cec21f93667bbef5132112ee44e3a153a50e60f6c52077b844"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.3.0/reasondb-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5215b1cf26e0721fb00ce6272d2fcfb28cd898306dd4b2f1201da7324993a226"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
