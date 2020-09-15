require "formula"

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

HOMEBREW_9RULES_VERSION="1.1.0"

class Ninerules < Formula
  desc "Checking tool of small object programming for the Java language"
  homepage "https://github.com/tamada/9rules"
  url "https://github.com/tamada/9rules/releases/download/v#{HOMEBREW_9RULES_VERSION}/9rules-#{HOMEBREW_9RULES_VERSION}-bin.zip"
  version HOMEBREW_9RULES_VERSION
  sha256 "c4e27c371ff2f52e51998752b29db6a061dc6e813306d66547b67822cf05ba34"

  def install
    (bin/"9rules").write <<~EOS
      #!/bin/sh
      java -jar #{libexec}/9rules-#{HOMEBREW_9RULES_VERSION}.jar "$@"
    EOS
    libexec.install "9rules-#{HOMEBREW_9RULES_VERSION}.jar"
    libexec.install "lib"
    libexec.install "bin"
  end
end
