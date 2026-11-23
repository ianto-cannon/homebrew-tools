class MakeSitemap < Formula
  desc "Command-line utility: make-sitemap"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/global1/bin/make-sitemap"
  version "1.0.3"
  sha256 "2155667e25afaec6b20d85b9c189a657406ef5ae4899ad735fcae5eb11ecaa76"

  def install
    bin.install "make-sitemap"
  end

  test do
    assert_predicate bin/"make-sitemap", :executable?
  end
end
