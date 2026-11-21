class MakeSitemap < Formula
  desc "Command-line utility: make-sitemap"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.1/bin/make-sitemap"
  version "1.0.2"
  sha256 "fa530aa24189a71027564eaf618bd80645cfc4c6"

  def install
    bin.install "make-sitemap"
  end

  test do
    assert_predicate bin/"make-sitemap", :executable?
  end
end
