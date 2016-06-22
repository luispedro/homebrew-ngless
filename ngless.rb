require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Cabal

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/de71ac45e94e81d8d5f96d960fe3c049d2da63cf.zip"
  sha256 "20f960c34fc8ecd44719e6a0832b5dc2867c422f8b144aa0394084459d7f6c54"
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
