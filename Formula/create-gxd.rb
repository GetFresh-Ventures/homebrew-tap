class CreateGxd < Formula
  desc "Growth by Design CEO AI Kit — Install an AI Chief of Staff in 3 minutes"
  homepage "https://www.getfreshventures.com/ceo-ai-kit"
  url "https://github.com/GetFresh-Ventures/product-gxd-ceo-ai-kit/releases/download/v1.55.0/create-gxd-macos"
  version "1.55.0"
  sha256 "bc50e79605a83e25c8442b175512acf3398c3d8a545ef495dfae11d982fe29c1"

  def install
    bin.install "create-gxd-macos" => "create-gxd"
  end

  test do
    assert_match "Growth by Design", shell_output("#{bin}/create-gxd --help 2>&1", 1)
  end
end