class Trash < Formula
  desc "Command-line utility: trash"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/global1/bin/trash"
  version "1.0.3"
  sha256 "bee7fee5e48c995a0f6a5d0ca7e2f34d6a05a459096121dfe61075c30f169966"

  def install
    bin.install "trash"
  end

  test do
    assert_predicate bin/"trash", :executable?
  end
end
