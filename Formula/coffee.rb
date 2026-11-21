class Coffee < Formula
  desc "Command-line utility: coffee"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.0/bin/coffee"
  version "1.0.0"
  sha256 "c4ba11549d3530d26957bc3ef8a8e1e9c00b0d8c1cc8680a230019f694678dc9"

  def install
    bin.install "coffee"
  end

  test do
    assert_predicate bin/"coffee", :executable?
  end
end
