class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.2/archmap_v0.1.2_darwin_arm64.tar.gz"
      sha256 "5f9b4ea8458482bcc65cf50fedf70449c7e210f3e38c53dfe5b3a516411ccd70"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.2/archmap_v0.1.2_darwin_amd64.tar.gz"
      sha256 "2c8e10c70dba1ce3175d4a2c61de1f2bb90eb4c07f11b2f1652c96ab5cc335b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.2/archmap_v0.1.2_linux_arm64.tar.gz"
      sha256 "63fe566c2fd504920b60384eea2fe92220847459b7fd137fc773958e539f76da"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.1.2/archmap_v0.1.2_linux_amd64.tar.gz"
      sha256 "8421b776b90b834a54e3d74f656fa062f346dacf1d25ef671e3d5343b8ebd159"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
