require "formula"

HOMEBREW_TJDOE_VERSION="1.0.0"

class Tjdoe < Formula
  desc "anonymizing the programs of the assignments in the programming courses and their score for grades."
  homepage "https://github.com/tamada/djdoe"
  url "https://github.com/tamada/tjdoe/releases/download/v1.0.0/tjdoe-#{HOMEBREW_TJDOE_VERSION}_darwin_amd64.tar.gz"
  version HOMEBREW_TJDOE_VERSION
  sha256 "e58f4634fb35ea351cca0bf5ac08c4a80474dea956182c2e67627c3924239381"

  depends_on "go"  => :build

  def install
      bin.install "tjdoe"
  end
end
