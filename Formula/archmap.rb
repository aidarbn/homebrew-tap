class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.5.0/archmap_v0.5.0_darwin_arm64.tar.gz"
      sha256 "bb7e06fe962ebc4257189459fc5ca90f4ef750ebd92b7726b0d2696a812c10ec"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.5.0/archmap_v0.5.0_darwin_amd64.tar.gz"
      sha256 "bd492a95a7f480f61eed06be54f592fa4416bbe06fd422faf4088cf8d29a61fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.5.0/archmap_v0.5.0_linux_arm64.tar.gz"
      sha256 "d37710e71c718ac1401ece3770f20984d713e086eb457d995ebc4007e691cc3b"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.5.0/archmap_v0.5.0_linux_amd64.tar.gz"
      sha256 "37229f41ae8faf290fc12b5140195528ef340e14b52ff529be7987c89ce27310"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
