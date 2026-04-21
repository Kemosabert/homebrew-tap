class Jsed < Formula
    desc "Super tiny JSON editor for big files"
    homepage "https://github.com/Kemosabert/jsed"
    version "v0.0.1"
    url "https://github.com/Kemosabert/jsed/releases/download/v0.0.1/jsed-v0.0.1-macos-aarch64.tar.gz"
    sha256 "sha256:44225562c81c09c38f27ff147623817d483a49a7ab19757d5a2d7cb77316bfdb"
    license "MIT"
    
    depends_on: macos
    depends_on arch:: arm64
    
    def install
        bin.install "jsed"
    end
    
    test do
      assert_match "jsed", shell_output("#{bin}/jsed --help", 2).to_s # or just: system "#{bin}/jsed", "--version" once you add one
    end
end