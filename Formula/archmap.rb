class Archmap < Formula
  desc "Interactive function-level architecture map of a repository"
  homepage "https://github.com/aidarbn/archmap"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.0/archmap_v0.3.0_darwin_arm64.tar.gz"
      sha256 "f14287f2ac930e28124afb21a8e0a579d6d28ed687843cf739886ad1c030f894"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.0/archmap_v0.3.0_darwin_amd64.tar.gz"
      sha256 "61b185aa2e44afdd3996ef8eaa4a1dac301c361199c92ee21c103b3e12db3cd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.0/archmap_v0.3.0_linux_arm64.tar.gz"
      sha256 "2880c10ece825cf1046c70346841a9db115148fca52e589d01b68b22d8ea5712"
    end
    on_intel do
      url "https://github.com/aidarbn/archmap/releases/download/v0.3.0/archmap_v0.3.0_linux_amd64.tar.gz"
      sha256 "595b3e660f8eb749238a4408478ad7994b0b76574ecb2377e779b7f5879b355f"
    end
  end

  def install
    bin.install "archmap"
  end

  test do
    system "#{bin}/archmap", "version"
  end
end
