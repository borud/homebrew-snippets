class Snippet < Formula
  desc "CLI for managing snippets"
  homepage "https://github.com/borud/snippets"
  version "v0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/borud/snippets/releases/download/v0.2.0/snippet_v0.2.0_darwin_arm64.tar.gz"
      sha256 "328e9c50ee645de69bbb40ec3574b538666074426d46dbe2fc4644c2fbbe4d3d"
    end
    on_intel do
      url "https://github.com/borud/snippets/releases/download/v0.2.0/snippet_v0.2.0_darwin_amd64.tar.gz"
      sha256 "fcc25aadc35f1a1ba13e0eaa771cbb7bb11dd201dea3a37c9c7a44c16ea3ff64"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/borud/snippets/releases/download/v0.2.0/snippet_v0.2.0_linux_arm64.tar.gz"
        sha256 "5b648822ee5062564fa2fb293acd40684e151a2cd264213690078633d4d77b3f"
      end
    end
    on_intel do
      url "https://github.com/borud/snippets/releases/download/v0.2.0/snippet_v0.2.0_linux_amd64.tar.gz"
      sha256 "cc1bdded077d375db37cb1190e19df6ddb38e4076b43f28eb324b9ddb2c7ea14"
    end
  end

  def install
    bin.install "snippet"
  end
end
