class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.0/snippet_v0.3.0_darwin_arm64.tar.gz"
      sha256 "022dbb072cadb325c1aaca15f3efeaf2eb0dff2a205b9d9e2975462fff224084"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.0/snippet_v0.3.0_darwin_amd64.tar.gz"
      sha256 "3ccf8f9aebd92594f9e0381d5d86a5b9cc1ef95476f17b0d58bc5a4e3e36f5a2"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.3.0/snippet_v0.3.0_linux_arm64.tar.gz"
        sha256 "c72977531a66c652e31754f1942d4164aefa9514cf1d24eb3a344556e52c6e6b"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.0/snippet_v0.3.0_linux_amd64.tar.gz"
      sha256 "11865843baf09faddc52d78b926ee215d345fdc723031aa32f9ecacc6cf30edd"
    end
  end

  def install
    bin.install "snippet"
  end
end
