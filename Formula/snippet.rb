class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://s.borud.no"
  version "v0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.3/snippet_v0.4.3_darwin_arm64.tar.gz"
      sha256 "dc65543e2ef47d3436529af1bc97f44aa3bcfd4f31a08fed7fd0d1853442d428"
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.3/snippet_v0.4.3_darwin_amd64.tar.gz"
      sha256 "316b7550945ba157c15ae7259914e4f1344be41ac9faa5bfcbf81a6c7f882d1d"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets-releases/releases/download/v0.4.3/snippet_v0.4.3_linux_arm64.tar.gz"
        sha256 "593547b5b94742840bdf59703418ad1f633e9e16fad23ba13399360d0ecc3a34"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets-releases/releases/download/v0.4.3/snippet_v0.4.3_linux_amd64.tar.gz"
      sha256 "f494f6dcb5becaba190c1ff2fd35bfc9dc6f43797199847fa8202cb304b63ae3"
    end
  end

  def install
    bin.install "snippet"
  end
end
