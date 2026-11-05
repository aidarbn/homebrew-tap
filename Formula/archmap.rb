class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.8.0/archmap_v0.8.0_darwin_arm64.tar.gz"
      sha256 "f31b4964e8e18f70c85dc26ce93339f10520d36578fd019d9303a100725ea81c"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.8.0/archmap_v0.8.0_darwin_amd64.tar.gz"
      sha256 "723eccbde3c60162171367c0adbcbf79e90bcbe4ed2dcba9194dd5e186d6b090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.8.0/archmap_v0.8.0_linux_arm64.tar.gz"
      sha256 "11eb7486aeb7452f0caed2162aa11e21361c4a774e6b94a888356f75071487c8"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.8.0/archmap_v0.8.0_linux_amd64.tar.gz"
      sha256 "52588668a30ddc71940e2320c82e7e20a65490f081dbdfe99ccbc2329c98066b"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
