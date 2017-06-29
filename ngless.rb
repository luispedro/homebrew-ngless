require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Cabal

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/9133f1443b5db854ca1ae819d6c7c88ad63232ea.zip"
  sha256 "f00a64d3afeeae3ca7902c24770818b05d2645c0ffc1fdceb6d84e11002a81b1"
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
