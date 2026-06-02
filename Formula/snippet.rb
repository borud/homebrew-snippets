class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.4.4"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.4/snippet_v0.4.4_darwin_arm64.tar.gz"
      sha256 "84d2bb4e9d2fc91293b4c56e12bca9bd5c1a36307150f071318933547ed05cf3"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.4/snippet_v0.4.4_darwin_amd64.tar.gz"
      sha256 "584654392b45b20637a2565d38f6a47aff4643286792b7e3c720ff50439af3d2"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.4.4/snippet_v0.4.4_linux_arm64.tar.gz"
        sha256 "079a8a3007b91959355068a095f93f02efee2841ba1ee59051f525f3fd98c5ac"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.4/snippet_v0.4.4_linux_amd64.tar.gz"
      sha256 "d74af0037f063e08627df02ee2d7d3c6f3ad36ce6352a313d86d459c4ea23b0a"
    end
  end

  def install
    bin.install "snippet"
  end
end
