class Owl < Formula
  desc "Command-line utility: owl"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.1/bin/owl"
  version "1.0.1"
  sha256 "10815264bdf783dd730735d5e847e0ba3b08d1cad41f4f3dc5535ad6084fff8f"

  def install
    bin.install "owl"
  end

  test do
    assert_predicate bin/"owl", :executable?
  end
end
