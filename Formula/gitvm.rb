class Gitvm < Formula
  desc "Manage and switch Git identity profiles"
  homepage "https://github.com/SergioSanchezIglesias/gitvm-tui"
  version "0.1.0"
  license "MIT"
  on_macos do
    on_intel do
      url "https://github.com/SergioSanchezIglesias/gitvm-tui/releases/download/v0.1.0/gitvm_0.1.0_darwin_amd64.tar.gz"
      sha256 "c8b20d67e9712248249a18a8d43274cf1f9e4507bcf32fe06ca6466f6864e498"
    end
    on_arm do
      url "https://github.com/SergioSanchezIglesias/gitvm-tui/releases/download/v0.1.0/gitvm_0.1.0_darwin_arm64.tar.gz"
      sha256 "8df841c60a36d1bde0291b41758893d2731a20be5135cd7aff0412846625626d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/SergioSanchezIglesias/gitvm-tui/releases/download/v0.1.0/gitvm_0.1.0_linux_amd64.tar.gz"
      sha256 "a5b2b677c0bf0d48081748d4e7bac4bc737ff98f0cc2b7b3b06bee0384ebf2a6"
    end
    on_arm do
      url "https://github.com/SergioSanchezIglesias/gitvm-tui/releases/download/v0.1.0/gitvm_0.1.0_linux_arm64.tar.gz"
      sha256 "34e648481fc8a75013fe41d321d5bdfe3ee631e2c40d096950669b54df59b1e0"
    end
  end
  depends_on "git"

  def install
    bin.install "gitvm"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/gitvm --help")
    system "#{bin}/gitvm", "--help"
  end
end
