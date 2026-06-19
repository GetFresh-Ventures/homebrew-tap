class CreateGxd < Formula
  desc "Growth by Design CEO AI Kit — Install an AI Chief of Staff in 3 minutes"
  homepage "https://www.getfreshventures.com/ceo-ai-kit"
  url "https://github.com/GetFresh-Ventures/homebrew-tap/releases/download/v1.55.0/create-gxd-macos"
  version "1.55.0"
  sha256 "5e7cd31f1fdeca8a35eb7e6d0311be853f2498db2df7485687a7cac0287bfee9"
  
  def install
    bin.install "create-gxd-macos" => "create-gxd"
  end

  test do
    assert_match "Growth by Design", shell_output("#{bin}/create-gxd --help 2>&1", 1)
  end
end