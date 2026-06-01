class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.1/snippet_v0.3.1_darwin_arm64.tar.gz"
      sha256 "fa0026170f114702fe1301daa005968b5e125e204391ec7499e989a3b8bc0364"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.1/snippet_v0.3.1_darwin_amd64.tar.gz"
      sha256 "f8599bce36191a1c7de2e5d701e01b38bb1aa394d8005030c52b68a2eb818b51"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.3.1/snippet_v0.3.1_linux_arm64.tar.gz"
        sha256 "b8c1bc08b99d0a7bae398ace83895c7addde8dd5faa3e6369d1392e31c28f22a"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.3.1/snippet_v0.3.1_linux_amd64.tar.gz"
      sha256 "96e7cb53ddcafe0f2d9ef8dadc83d5e3c72821634c33d00a60970147730343ee"
    end
  end

  def install
    bin.install "snippet"
  end
end
