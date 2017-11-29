require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Stack

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/v0.5.tar.gz"
  sha256 "f02a68d3afeeae3ca7902c24770818b05d2645c0ffc1fdceb6d84e11002a81b1"
  version "0.5.0"

  head "https://github.com/luispedro/ngless.git"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  depends_on "bwa" => :install
  depends_on "samtools" => :install

  def install
    install_cabal_package
  end
end
