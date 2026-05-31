class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.2.0/snippet_v0.2.0_darwin_arm64.tar.gz"
      sha256 "3cf2eed6aa9c783472a39698d66667dfb20f8cd9c15ff38fc382c84112aea3ab"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.2.0/snippet_v0.2.0_darwin_amd64.tar.gz"
      sha256 "ab7548042d130df4d7cf7d2c396b0aae7bd177ba7c6253de279cd776cbde84f0"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.2.0/snippet_v0.2.0_linux_arm64.tar.gz"
        sha256 "8f46a028abe91bf62241f24bf49337d8afc4e620f5e81e191ade017838db1c63"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.2.0/snippet_v0.2.0_linux_amd64.tar.gz"
      sha256 "5988bc0133c11fcd1aa3d4adc3d90c6829d001814e4eb1d4e16cda99ef56b19d"
    end
  end

  def install
    bin.install "snippet"
  end
end
