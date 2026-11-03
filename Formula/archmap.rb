class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.0/archmap_v0.2.0_darwin_arm64.tar.gz"
      sha256 "fbd4565abedc74ef3c80a2cb4c934d78ce58ce65d62948bbdcda832562f7135c"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.0/archmap_v0.2.0_darwin_amd64.tar.gz"
      sha256 "19971187850d3e018b54685d046beaa6ca4f88b453e1ef3a842d5da801538d97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.0/archmap_v0.2.0_linux_arm64.tar.gz"
      sha256 "a36273a9a3a4682c5245df8e53ac1991c2158ec8be7970aa31d994f2ef07b0c2"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.0/archmap_v0.2.0_linux_amd64.tar.gz"
      sha256 "180e712764bcb7ea9ec633d0664cff5a9fcc27a0efd10cec030b91418a810ea8"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
