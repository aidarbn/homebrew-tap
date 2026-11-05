class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.17.0/archmap_v0.17.0_darwin_arm64.tar.gz"
      sha256 "21b8bc497f9f493c0deb16695d5bdf0655fa4d7f78b0868c562c531074925a66"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.17.0/archmap_v0.17.0_darwin_amd64.tar.gz"
      sha256 "f5b7dc6e107bdc821f17a0925bc59d266ca34337c677e3ede0ce1c5d3430c009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.17.0/archmap_v0.17.0_linux_arm64.tar.gz"
      sha256 "1582ab82a0b394c4727bbc580904fce9cba67ad22ec08697422455b8a69eeedc"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.17.0/archmap_v0.17.0_linux_amd64.tar.gz"
      sha256 "310634ed62e849fe726dc977f3130da7719dec3331b7b7c4b2f7bdcaf664d115"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
