require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Cabal

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/7ca531c752fb88f8a0df3dc2c86d979d09e10e87.zip"
  sha256 "b928c514acf38ac41b6b0d2c783e1969930778450cfceecaae9623416a19055b"
  version "0.0.0"

  head "https://github.com/luispedro/ngless.git"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  depends_on "bwa" => :install
  depends_on "samtools" => :install

  def install
    system "m4 NGLess.cabal.m4 > NGLess.cabal"
    install_cabal_package
  end
end
