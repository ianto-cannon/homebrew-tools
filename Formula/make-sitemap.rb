class MakeSitemap < Formula
  desc "Command-line utility: make-sitemap"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.1/bin/make-sitemap"
  version "1.0.1"
  sha256 "be667244949a55c37d3f862dfb80a312150c1879c515ecc892981818244c9930"

  def install
    bin.install "make-sitemap"
  end

  test do
    assert_predicate bin/"make-sitemap", :executable?
  end
end
