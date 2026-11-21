class Trash < Formula
  desc "Command-line utility: trash"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.2/bin/trash"
  version "1.0.2"
  sha256 "eb46fa10815611b2d12faa862050ca059ec2bbb4"

  def install
    bin.install "trash"
  end

  test do
    assert_predicate bin/"trash", :executable?
  end
end
