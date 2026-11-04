class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.1/archmap_v0.4.1_darwin_arm64.tar.gz"
      sha256 "78d1fdee20024758accb23dbca4fdca313b02062f56e142e5f5d36020849b7e7"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.1/archmap_v0.4.1_darwin_amd64.tar.gz"
      sha256 "b39b8fa794e5aeff17f003bee291f483cf8c8e671c523d7eacb236857cf508bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.1/archmap_v0.4.1_linux_arm64.tar.gz"
      sha256 "c806785bb3ebd63a989bd9088fd2797e9da856c91e1fb96637f25a09b3abe460"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.1/archmap_v0.4.1_linux_amd64.tar.gz"
      sha256 "e9ce19f7b7293db3a7fef620d3cbdb0c5b18c4559bede361750ec55e2313962a"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
