class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.2/snippet_v0.4.2_darwin_arm64.tar.gz"
      sha256 "3a83e27f463c7ed629ac84d38b9243d6145a136cb2fd7dfc30b1588817bbd655"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.2/snippet_v0.4.2_darwin_amd64.tar.gz"
      sha256 "d881074cdce58a7e242e9a74cdec8133604f333d925878582dc3b5f80075afd0"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.4.2/snippet_v0.4.2_linux_arm64.tar.gz"
        sha256 "dff1ba0ca1f759a14a342f437aa700e635a91b9a3c501e2a808944739b172516"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.2/snippet_v0.4.2_linux_amd64.tar.gz"
      sha256 "3dbd94b16dc30851ddea56bd191af070fa43e2143622831af8c6949894e2ccdb"
    end
  end

  def install
    bin.install "snippet"
  end
end
