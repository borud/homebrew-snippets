class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.0/snippet_v0.4.0_darwin_arm64.tar.gz"
      sha256 "54c24c585087c3f3fe9ca359bfd1c9158afeac3a571f626d1164efdc9ae9bec7"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.0/snippet_v0.4.0_darwin_amd64.tar.gz"
      sha256 "852b3ff35824e154644d01221816e76cc6431945b0f2a633ebc680f2562ea914"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.4.0/snippet_v0.4.0_linux_arm64.tar.gz"
        sha256 "9cbf4c6e2f98b8a7f7c51254d9b1ed5949cc9f167c0abf98dee8a2940dd21aad"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.0/snippet_v0.4.0_linux_amd64.tar.gz"
      sha256 "62bf9b0a81b4f8713fbd03f8fbfc9138eb45e729a9b21b3568b217f608cd16c9"
    end
  end

  def install
    bin.install "snippet"
  end
end
