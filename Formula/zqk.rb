class Zqk < Formula
  desc "Kernel and orchestration CLI for AI-human hybrid software engineering"
  homepage "https://zqk.dev"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_arm64.tar.gz"
      sha256 "61373be8579065c5a2b955828f943a01cb7f2ccf549824bad3c33bdd7ae890de"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_amd64.tar.gz"
      sha256 "8db9f747b8f862da29f6b747e98e7bb6e01ea63becfa6aa4a15e00f9e072660e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_arm64.tar.gz"
      sha256 "43e0fd148e60cbed6ac50755b7d500927846d216b047f0a6edc010646a76270d"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_amd64.tar.gz"
      sha256 "c358f1ea1a54ee056c79420edf27e76c40c0366b086751851522b3beb0a8706c"
    end
  end

  def install
    bin.install "zqk"
  end

  test do
    system "#{bin}/zqk", "--help"
  end
end
