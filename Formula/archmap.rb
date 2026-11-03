class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.1/archmap_v0.1.1_darwin_arm64.tar.gz"
      sha256 "053edbd83cb187f1d5bd63ad809de7aafb8a061bc7786f1d037fec9f10783c96"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.1/archmap_v0.1.1_darwin_amd64.tar.gz"
      sha256 "ff565932d89cc0684e1a835e6d14bd3edafa41d4f355a801ec8983c3fc6ad91f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.1/archmap_v0.1.1_linux_arm64.tar.gz"
      sha256 "48d0d12aec16d8e3f98e5ec4bbcb57aa8800c9bb681c9c03d6bd10dc98cdcc87"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.1/archmap_v0.1.1_linux_amd64.tar.gz"
      sha256 "3e4207b29ac1be3e2402b2720fb59d3185a4a196a4a65ce13627c2f7df75ef72"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
