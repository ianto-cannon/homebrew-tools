class Ianto < Formula
  desc "Command-line utility: ianto"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.0/bin/ianto"
  version "1.0.0"
  sha256 ""

  def install
    bin.install "ianto"
  end

  test do
    assert_predicate bin/"ianto", :executable?
  end
end
