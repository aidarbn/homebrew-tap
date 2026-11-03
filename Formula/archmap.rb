class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.1/archmap_v0.2.1_darwin_arm64.tar.gz"
      sha256 "f0521812c921bb7081600b9ab67b94181f8dc0a87b6f981a6fcf7f805b9c490e"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.1/archmap_v0.2.1_darwin_amd64.tar.gz"
      sha256 "80718ff4ad9f9d6c8d1e30409c9588651282bef6f782ff1a9ca05367bfb1b6bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.1/archmap_v0.2.1_linux_arm64.tar.gz"
      sha256 "e069188b28aa3615f20f53166ded08ed5022a140c25e5e5096b497254f3f37fc"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.2.1/archmap_v0.2.1_linux_amd64.tar.gz"
      sha256 "9d99ce243a1a5095ac658a4d8d30e8a8e080fdebb42d4a68264629e22e73d1c7"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
