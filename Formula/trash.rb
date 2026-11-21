class Trash < Formula
  desc "Command-line utility: trash"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.0/bin/trash"
  version "1.0.0"
  sha256 "d2101fe2e434c7c1ce445ae9f9519ccadafb6417e1fc6b91646a6138e8370932"

  def install
    bin.install "trash"
  end

  test do
    assert_predicate bin/"trash", :executable?
  end
end
