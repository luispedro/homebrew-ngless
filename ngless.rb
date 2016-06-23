require "language/haskell"

class Ngless < Formula
  include Language::Haskell::Cabal

  desc "Domain Specific Language for NGS Processing"
  homepage "http://ngless.readthedocs.io/"
  url "https://github.com/luispedro/ngless/archive/de71ac45e94e81d8d5f96d960fe3c049d2da63cf.zip"
  sha256 "bee29a0ea8cb05c16c59d9555450f36f42e1d1ae9622d3067df739d767a8d226"
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
