class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.15.0/archmap_v0.15.0_darwin_arm64.tar.gz"
      sha256 "696ff5cb9c86000a359c07a1bcca52c5f9c2531a8f9df75f98b46b7dc101b3ff"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.15.0/archmap_v0.15.0_darwin_amd64.tar.gz"
      sha256 "c2c1bf63fb78a5b67a55a81698c0db0d815a58b198e9f2dd559d5cce7acfd338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.15.0/archmap_v0.15.0_linux_arm64.tar.gz"
      sha256 "62324fe7c3b839cfa6be4ebf8a7e90b7fe8bfbfb105cedf22f2c5a33e274b353"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.15.0/archmap_v0.15.0_linux_amd64.tar.gz"
      sha256 "23ca59f1ab3966455561d829a092c9f46167a7474f3302516b27a49f500ddacc"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
