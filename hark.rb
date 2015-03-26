require "formula"

class Hark < Formula
  homepage "http://winnie.kuis.kyoto-u.ac.jp/HARK/document/hark-document-ja/index.html"
  url "https://raw.githubusercontent.com/mountcedar/homebrew-hark/master/hark-2.1.tgz"
  sha1 ""

  depends_on "gcc" => :build
  depends_on "cmake" => :build
  depends_on :x11
  depends_on "boost"
  depends_on "gtk+"
  depends_on "nodejs"
  depends_on "graphviz"
  depends_on "libxml2"
  depends_on "libzip"

  bottle do
    root_url "https://raw.githubusercontent.com/mountcedar/homebrew-hark/master/bottles" # Optional root to calculate bottle URLs
    sha1 "5e33131d0d67fbec802373f13a2559a94a225e90" => :yosemite
  end

  def pour_bottle?
    # Only needed if this formula has to check if using the pre-built
    # bottle is fine.
    true
  end

  conflicts_with "libharkio", :because => "hark is containing libharkio"
  conflicts_with "flowdesigner", :because => "hark is containing flowdesigner"
  conflicts_with "harkfd", :because => "hark is containing harkfd"  
  conflicts_with "harkdesigner", :because => "hark is containing harkdesigner"

  def install
    # nothing to do
  end

  test do
    system "false"
  end
end
