require "formula"

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

HOMEBREW_9RULES_VERSION="1.0.0"

class Ninerules < Formula
  desc "Checking tool of small object programming for the Java language"
  homepage "https://github.com/tamada/9rules"
  url "https://github.com/tamada/9rules/releases/download/v1.0.0/9rules-#{HOMEBREW_9RULES_VERSION}-bin.zip"
  version HOMEBREW_9RULES_VERSION
  sha256 "08922a8c569a362b7e693b07cf614b6d8ab67d6e4dd9d3142991f6e41a621fee"

  def install
    (bin/"9rules").write <<~EOS
      #!/bin/sh
      cd #{libexec} && bin/9rules.sh "$@"
    EOS
    libexec.install "9rules-#{HOMEBREW_9RULES_VERSION}.jar"
    libexec.install "lib"
    libexec.install "bin"
  end
end
