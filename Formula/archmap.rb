class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.1/archmap_v0.3.1_darwin_arm64.tar.gz"
      sha256 "f6d7a411668f2ba76e6c2c0bd172d2c0377135fc41a855b71335d505746a6f0f"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.1/archmap_v0.3.1_darwin_amd64.tar.gz"
      sha256 "485eb226691822ca5eeb081bfd8ae1bc4faaaebffc7b2182c67885e7537fa29e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.1/archmap_v0.3.1_linux_arm64.tar.gz"
      sha256 "632fff38af8f4da3e44c23b524d3c99e183558553e52bcbc167cb792c3c2b335"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.1/archmap_v0.3.1_linux_amd64.tar.gz"
      sha256 "0999041bb983801c625a06b64f17b17deac5c097e0e77056901bd04bfeeeb394"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
