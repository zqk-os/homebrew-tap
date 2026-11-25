class Zqk < Formula
  desc "Kernel and orchestration CLI for AI-human hybrid software engineering"
  homepage "https://zqk.dev"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_arm64.tar.gz"
      sha256 "8da3258bf4373e96099d391b6b1c6ced6ce0483d18ab6bdf4057e7fa8160e59f"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_darwin_amd64.tar.gz"
      sha256 "35bd08f13cd88333ca444d23d4b5a7b210f4e1c59c3c13d1026b581b0d967457"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_arm64.tar.gz"
      sha256 "3347e2b81bcc795685d3b377314c2140050a92bdba576d3fb7abb4aba0aabfa9d"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk_#{version}_linux_amd64.tar.gz"
      sha256 "7fd524f1876b1604498cd7668e953b3520feed32fd2ebcfa5981786f9b8a9ab2"
    end
  end

  def install
    bin.install "zqk"
  end

  test do
    system "#{bin}/zqk", "--help"
  end
end
