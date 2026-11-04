class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.0/archmap_v0.4.0_darwin_arm64.tar.gz"
      sha256 "a5f2283d2b3096e6d8892f1a3b3bc00fef7c5af263e6e3d064c952e32a322958"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.0/archmap_v0.4.0_darwin_amd64.tar.gz"
      sha256 "9cbaa4a0f03390ca4ac91ec0b8eeb4adbbe2eb1c2e91376995b4119f518b23fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.0/archmap_v0.4.0_linux_arm64.tar.gz"
      sha256 "b046763d74bbfa54d6abc9b5fd84e7156d93f4075bfe6cec168cb4768dd93489"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.4.0/archmap_v0.4.0_linux_amd64.tar.gz"
      sha256 "4860fb1f11fa97d2bf2150ec5d55e91daeec13040ae2ad1d9a12f350a4fac3ab"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
