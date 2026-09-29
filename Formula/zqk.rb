class Zqk < Formula
  desc "Kernel and orchestration CLI for AI-human hybrid software engineering"
  homepage "https://zqk.dev"
  version "0.1.0-beta.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_darwin_arm64.tar.gz"
      sha256 "f223cc2bc5fae22fb0e6b28db81c57f86a5279ad954ce9d21eafc37e551d90c6"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_darwin_amd64.tar.gz"
      sha256 "7ce1be29fac6560ba97b830e09eb93c6cfbeab2b3d3bc5ed91cb081aa695691e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_linux_arm64.tar.gz"
      sha256 "1607da65ad8ffa67b304d55e8630b18be36ce510b6f83c71099f770920667f4c"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_linux_amd64.tar.gz"
      sha256 "439f24abf924441597aa768c38312e713f538ac939ae799cc9b6fff06ebe2481"
    end
  end

  def install
    if File.exist?("zqk")
      bin.install "zqk"
    else
      bin.install "zqk-community" => "zqk"
    end
  end

  test do
    system "#{bin}/zqk", "--help"
  end
end
