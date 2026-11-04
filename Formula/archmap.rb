class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.2/archmap_v0.7.2_darwin_arm64.tar.gz"
      sha256 "2e4a45211852b246a81835b1739ca5da4fb92df7e95a0e6381718b2822e3f69a"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.2/archmap_v0.7.2_darwin_amd64.tar.gz"
      sha256 "66a1f121278e40944f68d5994f05b3e226850143d8ff6766884dddf3219a4625"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.2/archmap_v0.7.2_linux_arm64.tar.gz"
      sha256 "a338d497ce8340ed7239ef64aabf1cb216e391f1d1f28ddcd284c4e78ec5ccca"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.2/archmap_v0.7.2_linux_amd64.tar.gz"
      sha256 "52cdf094450ee9b471696620a583c7848976351a9805d3cf56333408894f58a2"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
