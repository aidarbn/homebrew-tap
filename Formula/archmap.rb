class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.0/archmap_v0.7.0_darwin_arm64.tar.gz"
      sha256 "fe22bbb125a6739980f6010200882082e7f26e23f489f3d36cf6de6a6a0664a0"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.0/archmap_v0.7.0_darwin_amd64.tar.gz"
      sha256 "855498e7cae36f05758f04a0ccb0e3de460b797ab267145977fba8b86290a5fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.0/archmap_v0.7.0_linux_arm64.tar.gz"
      sha256 "cfa96ee54ca38917f4a9f95c2a511c07887e3ff98084cee278800c442aa9c9e9"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.7.0/archmap_v0.7.0_linux_amd64.tar.gz"
      sha256 "27930a7ede2c9f70e78282aa9da7708c1cabb654b99ca4e8326eee289ac10842"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
