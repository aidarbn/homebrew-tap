class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.3/archmap_v0.3.3_darwin_arm64.tar.gz"
      sha256 "85f40177c4e122562219f0003455e185ac19a9526d13f7ac58a9309da59eee42"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.3/archmap_v0.3.3_darwin_amd64.tar.gz"
      sha256 "ebb33f44e47cbeff6ac55e2856da8c462224b5d84d2192a39616d116baf8a7e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.3/archmap_v0.3.3_linux_arm64.tar.gz"
      sha256 "2d521e50cb02edea2a329df72db4a6903d0af4130631e7667945664a9224686e"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.3/archmap_v0.3.3_linux_amd64.tar.gz"
      sha256 "62d90f97a8637db9925f2e8b973d1f923816bd34236e22aab586714b5aac75c8"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
