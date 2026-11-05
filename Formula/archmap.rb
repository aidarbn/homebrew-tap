class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.14.0/archmap_v0.14.0_darwin_arm64.tar.gz"
      sha256 "c1ba5c05327d5ad10141568648379913fed9bcc6a3b2c17ef87f4c6154f98fe3"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.14.0/archmap_v0.14.0_darwin_amd64.tar.gz"
      sha256 "9b82eee28bb1e0359c5b506b162f63d5d04dfc0f96320b136ec764e392356749"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.14.0/archmap_v0.14.0_linux_arm64.tar.gz"
      sha256 "cd02498517c26dc0ce14b7b9ad589a89590a4e6ee853c90c9ca76a20adc3ff62"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.14.0/archmap_v0.14.0_linux_amd64.tar.gz"
      sha256 "3579e5eaaaf92958c1f06acfb227f68763ff999d82452dd2a75b6d4c5fffae9b"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
