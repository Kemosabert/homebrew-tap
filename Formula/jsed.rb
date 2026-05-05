class Jsed < Formula
  desc "Super tiny JSON editor for big files"
  homepage "https://github.com/Kemosabert/jsed"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kemosabert/jsed/releases/download/v0.0.3/jsed-v0.0.3-macos-aarch64.tar.gz"
      sha256 "75490e0d33848cb88880cf427ef3c592e70763c9ab21ebde992770d9b031389f"
    end
  end

  def install
    bin.install "jsed"
  end

  test do
    assert_match "jsed", shell_output("#{bin}/jsed --help", 2).to_s
  end
end
