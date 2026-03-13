class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/brainfish-ai/reasondb"
  license "ReasonDB-1.0"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.1/reasondb-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "3aa274afaea71de7c3d47ddccc090faf3a926a454e17ef0ba7a96831714bd0fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.1/reasondb-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "953c0a4a89a86fa139f11512df2b5680ed194f4c5399c2e87fdcd9275c155b67"
    end
    on_intel do
      url "https://github.com/brainfish-ai/reasondb/releases/download/v0.5.1/reasondb-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f374ac1377a5f461ac21a0c3f3b24d1fd607abf736d97b4ac472e33c1d16ace"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
