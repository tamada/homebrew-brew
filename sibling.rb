require "formula"

HOMEBREW_SIBLING_VERSION="1.0.0"

class Sibling < Formula
  desc "get next/previous sibling directory name."
  homepage "https://github.com/tamada/sibling"
  url "https://github.com/tamada/sibling/releases/download/v#{HOMEBREW_SIBLING_VERSION}/sibling-#{HOMEBREW_SIBLING_VERSION}_darwin_amd64.tar.gz"
  version HOMEBREW_SIBLING_VERSION
  sha256 "d28d3300e112ed37fddefc49d666c623ef9838f6dac2ff36d703706e0dc3e576"

  depends_on "bash_completion@2" => :optional

  option "without-completions", "Disable bash completions"

  def install
    bin.install "sibling"

    if build.with? "completions"
      bash_completion.install "completions/bash/sibling.bash"
    end
  end
end
