class Jsed < Formula
  desc "Super tiny JSON editor for big files"
  homepage "https://github.com/Kemosabert/jsed"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kemosabert/jsed/releases/download/v0.0.1/jsed-v0.0.1-macos-aarch64.tar.gz"
      sha256 "44225562c81c09c38f27ff147623817d483a49a7ab19757d5a2d7cb77316bfdb"
    end
  end

  def install
    bin.install "jsed"
  end

  test do
    assert_match "jsed", shell_output("#{bin}/jsed --help", 2).to_s
  end
end
