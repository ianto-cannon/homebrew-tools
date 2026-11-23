class Cake < Formula
  desc "Command-line utility: cake"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/global1/bin/cake"
  version "1.0.2"
  sha256 "883287b2e1298295f22c8d98dd7b7c85df7b0e456fd4b579e0ea07a954da8d6b"

  def install
    bin.install "cake"
  end

  test do
    assert_predicate bin/"cake", :executable?
  end
end
