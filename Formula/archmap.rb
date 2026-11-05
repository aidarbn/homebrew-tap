class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.3/archmap_v0.7.3_darwin_arm64.tar.gz"
      sha256 "9a84e25af7aea953886dddcc47ab0811d49f3ed47a3e73881f70b3191043ab91"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.3/archmap_v0.7.3_darwin_amd64.tar.gz"
      sha256 "d69511d9a6de64708a7d644e363b5c11ee2bcc1f30443e3764a9af446748b969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.3/archmap_v0.7.3_linux_arm64.tar.gz"
      sha256 "f7ae5fc95227a6dde88258e5fd0f7a1820ea9e901cb94073e71ccb4c33e48372"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.3/archmap_v0.7.3_linux_amd64.tar.gz"
      sha256 "11f3e1da59935b61926382e10d452167ff5c8acd672e42c17ccf09eff32b2f12"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
