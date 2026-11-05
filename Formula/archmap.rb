class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.9.0/archmap_v0.9.0_darwin_arm64.tar.gz"
      sha256 "e21325574e5d5e8c9374c6c0d4d48fa949e7325742938bf02da8f6bae6780e67"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.9.0/archmap_v0.9.0_darwin_amd64.tar.gz"
      sha256 "64019fcfb6be4e3d6d288c70e157a2593c9947b145b27428b6fef3c1bd8b272c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.9.0/archmap_v0.9.0_linux_arm64.tar.gz"
      sha256 "304cb5c51dcdf7c1ec1ad764c5932b495f28c711a5bbf3c1a1834e34c439cb97"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.9.0/archmap_v0.9.0_linux_amd64.tar.gz"
      sha256 "fda86a71f81d034638cb60fc2f47215cfb950ce71bcab1e25e1b966d24988917"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
