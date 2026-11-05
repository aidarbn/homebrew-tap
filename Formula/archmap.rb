class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.11.0/archmap_v0.11.0_darwin_arm64.tar.gz"
      sha256 "51bfb31d6891c1d07489839947e2b82fbd76f6948e4032f8cd93584191bfa6e2"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.11.0/archmap_v0.11.0_darwin_amd64.tar.gz"
      sha256 "edda6aacf1e7afc20531b45270609409bc7b3fbc946e3a148956e0fe4782c162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.11.0/archmap_v0.11.0_linux_arm64.tar.gz"
      sha256 "c62006ba9669b58e57e91cc93e053c283914e8758a6c9972a0de086de2105239"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.11.0/archmap_v0.11.0_linux_amd64.tar.gz"
      sha256 "4e6934fd8884ada8cefc7d555dbf54ed80830579a933ac02c3d5ce98e641d5f3"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
