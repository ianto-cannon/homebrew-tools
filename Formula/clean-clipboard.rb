class CleanClipboard < Formula
  desc "Command-line utility: clean-clipboard"
  homepage "https://github.com/ianto-cannon/homebrew-tools"
  url "https://raw.githubusercontent.com/ianto-cannon/homebrew-tools/v1.0.0/bin/clean-clipboard"
  version "1.0.0"
  sha256 "cb66375af4c835d6b677d6a99b968f567c5210f58d7b8d92c202728ac36ff21b"

  def install
    bin.install "clean-clipboard"
  end

  test do
    assert_predicate bin/"clean-clipboard", :executable?
  end
end
