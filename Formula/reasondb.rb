class Reasondb < Formula
  desc "AI-native document database with hierarchical reasoning retrieval"
  homepage "https://github.com/reasondb/reasondb"
  license "ReasonDB-1.0"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/reasondb/reasondb/releases/download/v0.1.2/reasondb-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "2a261a45e680f61eba34c1115944e5111a72a4ce59c54924a03c611785c61227"
    end
    on_intel do
      url "https://github.com/reasondb/reasondb/releases/download/v0.1.2/reasondb-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "abf26cf0b35d62e7aaba58d681090a5ea986d35b273f2cdd693858f126979512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/reasondb/reasondb/releases/download/v0.1.2/reasondb-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec9763edb87aa5650971a359e0e5c7a27cff902b3ab316ecc1806fd6afd7254f"
    end
    on_intel do
      url "https://github.com/reasondb/reasondb/releases/download/v0.1.2/reasondb-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2e35f94e8dcf5009eaafaae90631704203afa41d4bfd880e56792d7e34344d7"
    end
  end

  def install
    bin.install "reasondb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reasondb --version")
  end
end
