class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.12.0/archmap_v0.12.0_darwin_arm64.tar.gz"
      sha256 "5abcb4417bceff38092abe1029e2fcacefa0a2780879f22e52f11d2e394a6f04"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.12.0/archmap_v0.12.0_darwin_amd64.tar.gz"
      sha256 "7144db235fbfd2fa240f67f9fe2b89a31cda966ef8a5fd89fd54561aba5ea6f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.12.0/archmap_v0.12.0_linux_arm64.tar.gz"
      sha256 "0281098bd48a4a37627f20a3f79a84f3a87da6ec82b7d7ebff6813d19ea303db"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.12.0/archmap_v0.12.0_linux_amd64.tar.gz"
      sha256 "4ec68224e4fc0856e412f3a50d1d7bfd2a88bb8515c6a13ef4ddea21d179b6bd"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
