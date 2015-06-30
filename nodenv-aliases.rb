class NodenvAliases < Formula
  homepage "https://github.com/jasonkarns/nodenv-aliases"
  head "https://github.com/jasonkarns/nodenv-aliases.git"
  url "https://github.com/jasonkarns/nodenv-aliases/archive/v1.0.1.tar.gz"
  sha256 "115e3f482bf0c07f134bdb5aec9c1b88f057f60d0b87f34025fed79630e783a2"

  depends_on "jawshooah/nodenv/nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^alias$/, shell_output("nodenv commands")
  end
end
