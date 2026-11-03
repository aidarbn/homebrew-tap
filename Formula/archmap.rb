class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_darwin_arm64.tar.gz"
      sha256 "2f5f5d44c4672f43cbba570bb758d79b44ff2a36f7ef731f400e7958292b7b19"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_darwin_amd64.tar.gz"
      sha256 "2300487760260c6b932e5d00ebd0cf236bfd911ef0414e3908b9c60ca8c2a729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_linux_arm64.tar.gz"
      sha256 "c7c4a496ff5a5009617d093e0e1457d70aeff43b365d2f0ac9cb4454ad221d02"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_linux_amd64.tar.gz"
      sha256 "7a125d92b4083bff565da445db1b7f7dc14c000c549d2a091cba631c5459b870"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
