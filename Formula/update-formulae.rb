class UpdateFormulae < Formula
  desc "Command-line utility: update-formulae"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/global1/bin/update-formulae"
  version "1.0.0"
  sha256 "413aa5ba12d9ab12ad09c72a939ecf127a980e4ed849fbf414b998198480be38"

  def install
    bin.install "update-formulae"
  end
end
