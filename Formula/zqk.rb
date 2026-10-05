class Zqk < Formula
  desc "Kernel and orchestration CLI for AI-human hybrid software engineering"
  homepage "https://zqk.dev"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_arm64.tar.gz"
      sha256 "b56b4154d262e8892cf66f7ce1624a75bd2bcfa942fc00b45a574d838f0a0d77"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_amd64.tar.gz"
      sha256 "91343295d1bf85c6289378d6251e4d11d0cae0629694cb7770f5c6d97b313e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_arm64.tar.gz"
      sha256 "dead82e3b70ce2c061aa0e39fc260c2dd14b1d1c5aff42fa40b1ee18c599f9d6"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_amd64.tar.gz"
      sha256 "88cd2e15a8932d7d86c1f5f164f64ee5467c16efb6012978ebc07041d43f9792"
    end
  end

  def install
    bin.install "zqk"
  end

  test do
    system "#{bin}/zqk", "--help"
  end
end
