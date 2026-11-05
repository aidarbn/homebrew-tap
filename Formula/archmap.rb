class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.16.0/archmap_v0.16.0_darwin_arm64.tar.gz"
      sha256 "5661270f14a864130590441fd5026d3f85573838729a0366958cb1528f2fc29e"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.16.0/archmap_v0.16.0_darwin_amd64.tar.gz"
      sha256 "7aea5d9f53ad79ab844738997c3b478a0ff9aaf401ec80154c32af3879b2bd05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.16.0/archmap_v0.16.0_linux_arm64.tar.gz"
      sha256 "22860b3c6a027034458aa91cf461d7e5934e56aef4890db9d4fb6c876fa70151"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.16.0/archmap_v0.16.0_linux_amd64.tar.gz"
      sha256 "b0666068d3586d2cc4d4a13d7fbcfd655a7ce18ba880cda33d72e1d9dbb7ad83"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
