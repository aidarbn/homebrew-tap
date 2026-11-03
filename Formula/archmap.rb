class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3cce56fa7fdb7c1616b4dfae05abbcfe602a9e027f224b1ce8b4a6d54692ec9c"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_darwin_amd64.tar.gz"
      sha256 "ee3de5689c7623af40eb6284cd5494b830da4a2b108771a8b605e6bc7eccfd1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_linux_arm64.tar.gz"
      sha256 "34149209da558471587ab9f7bab50e861c0a5058c11fc36ede889e6084ec6b64"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.0/archmap_v0.1.0_linux_amd64.tar.gz"
      sha256 "ed77649a8a220ab35ff9964efe9c6a557ac8ef5279732b5eb1147d096d1c165a"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
