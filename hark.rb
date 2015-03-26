require "formula"

class Hark < Formula
  homepage "http://www.hark.jp/wiki.cgi"
  url "http://www.hark.jp/src/2.1.0/harkfd_2.1.0.tar.gz"
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
    root_url "https://github.com/mountcedar/homebrew-hark/releases/download/hark-2.1.yosemite" # Optional root to calculate bottle URLs
    sha1 "b5661bc87c4065cd2e8b4355057d11c97d816aa8" => :yosemite
  end

  def pour_bottle?
    # Only needed if this formula has to check if using the pre-built
    # bottle is fine.
    true
  end

  # conflicts_with "libharkio", :because => "hark is containing libharkio"
  # conflicts_with "flowdesigner", :because => "hark is containing flowdesigner"
  # conflicts_with "harkfd", :because => "hark is containing harkfd"  
  # conflicts_with "harkdesigner", :because => "hark is containing harkdesigner"

  def install
    # nothing to do
  end

  test do
    system "false"
  end
end
