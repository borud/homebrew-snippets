class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://github.com/borud/snippets"
  version "v0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets/releases/download/snippets/v0.2.0/snippet_v0.2.0_darwin_arm64.tar.gz"
      sha256 "a910f8fbc56f3ae16afc4146d1f708c17fea7cdbaecbea0b5cf022cdf8f457fa"
    end
    on_intel do
      url "https://github.com/borud/snippets/releases/download/snippets/v0.2.0/snippet_v0.2.0_darwin_amd64.tar.gz"
      sha256 "a5d002349765147fb3e203afeb56dd33ae524c0ba1be2b686d2f4a9bdf217cb1"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets/releases/download/snippets/v0.2.0/snippet_v0.2.0_linux_arm64.tar.gz"
        sha256 "d31b49b3ffb89ccb9cd2d248af82de393e6da0e885553a9947f6b3cc90e6067d"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets/releases/download/snippets/v0.2.0/snippet_v0.2.0_linux_amd64.tar.gz"
      sha256 "ec3fedf749f1beb56313ee0c35699d035925de3f5fceb252494ea25a7ff93a9f"
    end
  end

  def install
    bin.install "snippet"
  end
end
