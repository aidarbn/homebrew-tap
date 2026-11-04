class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.6.0/archmap_v0.6.0_darwin_arm64.tar.gz"
      sha256 "2f2a61cfc567146124c846a2e147f275090d3d82504c5900aab96e5bbaa3de7f"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.6.0/archmap_v0.6.0_darwin_amd64.tar.gz"
      sha256 "9a32deba4051ba947a3e937b9d6cb5184fc2869aa438589a4cb40fde41b881d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.6.0/archmap_v0.6.0_linux_arm64.tar.gz"
      sha256 "0869cdeed44433cf6a2017a654c7e589b6ccc8086978d1073d2c4992170866c0"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.6.0/archmap_v0.6.0_linux_amd64.tar.gz"
      sha256 "d7813a3bbae22f995cb1073dab140eacd6b5b29bafd1f04d88510a699dd16131"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
