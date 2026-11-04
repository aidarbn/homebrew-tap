class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.2/archmap_v0.4.2_darwin_arm64.tar.gz"
      sha256 "2bebefe4615d60dc085a31d96aff6adb8a242f00ddab4111302e9661209a3ca0"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.2/archmap_v0.4.2_darwin_amd64.tar.gz"
      sha256 "20a8e2e8c8e91793f1e24b3b725dc4a6fb1f5410f903c955ebcdbcde1bbbe330"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.2/archmap_v0.4.2_linux_arm64.tar.gz"
      sha256 "ec2cb0b024e1b8f6f21f2038cfe4fd6076c133b176162109669f153beca5a5ad"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.2/archmap_v0.4.2_linux_amd64.tar.gz"
      sha256 "9f6cb669550ab758ade02241cc3942d6066a4a5cb900d6230627c96268a2fe26"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
