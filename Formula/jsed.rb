class Jsed < Formula
  desc "Super tiny JSON editor for big files"
  homepage "https://github.com/Kemosabert/jsed"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kemosabert/jsed/releases/download/v0.0.4/jsed-v0.0.4-macos-aarch64.tar.gz"
      sha256 "70c32951fcdf083d316a66ae18e47e0b417c8934fb4e1f968ce937f84c507a51"
    end
  end

  def install
    bin.install "jsed"
  end

  test do
    assert_match "jsed", shell_output("#{bin}/jsed --help", 2).to_s
  end
end
