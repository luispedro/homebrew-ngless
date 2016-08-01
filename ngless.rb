require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Cabal

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/68e5a7782a0f33c5d443ffb9c610788bd21d7e53.zip"
  sha256 "c83fb2b82545389704740ec51a20f02180339d17bf08e027346a79b7e2278989"
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
