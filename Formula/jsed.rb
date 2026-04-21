class Jsed < Formula
  desc "Super tiny JSON editor for big files"
  homepage "https://github.com/Kemosabert/jsed"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kemosabert/jsed/releases/download/v0.0.2/jsed-v0.0.2-macos-aarch64.tar.gz"
      sha256 "sha256:af9a710bd4bc7c6a173f91573ab9082552fbda5b3ed91b17ed6b3cafb22bba22"
    end
  end

  def install
    bin.install "jsed"
  end

  test do
    assert_match "jsed", shell_output("#{bin}/jsed --help", 2).to_s
  end
end
