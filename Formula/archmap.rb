class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.10.0/archmap_v0.10.0_darwin_arm64.tar.gz"
      sha256 "670ad34b2281358a7aa20c1827d62040663ed6f7caa84c991cbcd96506d5f419"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.10.0/archmap_v0.10.0_darwin_amd64.tar.gz"
      sha256 "71e688259a15aa898a027596f96391e38b4e1f5bb09f3c9358dcbdcf10b63cad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.10.0/archmap_v0.10.0_linux_arm64.tar.gz"
      sha256 "820f8eda9fc28b1358577d676fb49cdabcbc7a5c3513dd9eea2b30ea2c068798"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.10.0/archmap_v0.10.0_linux_amd64.tar.gz"
      sha256 "3b252b50e219411ca92e3192690c37a5ef1eb13c410ec43394954d1a14db2aec"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
