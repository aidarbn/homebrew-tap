class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.13.0/archmap_v0.13.0_darwin_arm64.tar.gz"
      sha256 "0e15c8be2fc5e04ae3e13014d0a262dfdc6146697cadd38d9319075367d6a60b"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.13.0/archmap_v0.13.0_darwin_amd64.tar.gz"
      sha256 "5d98a34a75bb7ea4d321357bfa303993f5fd1f6ed211bc85575353abffc77dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.13.0/archmap_v0.13.0_linux_arm64.tar.gz"
      sha256 "bcd9682579ccb7ee5c36db2a93fb8f426f29a3c776842fd12c67587f710fceea"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.13.0/archmap_v0.13.0_linux_amd64.tar.gz"
      sha256 "bb67b8931abf1bb6d54a2bfae26589e59d4718c4134e5c2a0840707e8ed9e68f"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
