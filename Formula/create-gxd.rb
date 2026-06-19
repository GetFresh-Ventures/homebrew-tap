class CreateGxd < Formula
  desc "Growth by Design CEO AI Kit — Install an AI Chief of Staff in 3 minutes"
  homepage "https://www.getfreshventures.com/ceo-ai-kit"
  url "https://github.com/GetFresh-Ventures/homebrew-tap/releases/download/v1.55.0/create-gxd-1.55.0.tgz"
  version "1.55.0"
  sha256 "e2d988ba146405faccea08b9b7561d67f6fafe0a9e79af01e5cfe51663bbe389"

  depends_on "node@18"

  def install
    system "npm", "install", "--production"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"index.js" => "create-gxd"
  end

  test do
    assert_match "Growth by Design", shell_output("#{bin}/create-gxd --help 2>&1", 1)
  end
end