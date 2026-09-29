class Zqk < Formula
  desc "Kernel and orchestration CLI for AI-human hybrid software engineering"
  homepage "https://zqk.dev"
  version "0.1.0-beta.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_darwin_arm64.tar.gz"
      sha256 "92ccc0e27edb2184f0cb76627de03acf94f0ddda8d937048db2745247f8c2d14"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_darwin_amd64.tar.gz"
      sha256 "a7dc921acc3ada00051fa808cf8b69fa8ecae8f038076a07b9cbc8644e46b4ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_linux_arm64.tar.gz"
      sha256 "2b6887060936fa1b61add20045d6eb4b448a828076688644a71b356ccf6bbb91"
    else
      url "https://github.com/zqk-os/zqk/releases/download/v#{version}/zqk-community_#{version}_linux_amd64.tar.gz"
      sha256 "c9a2250ceb9ae088a09bf9c32ff6029e518c8d7786f978172435d2f209c157f9"
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
