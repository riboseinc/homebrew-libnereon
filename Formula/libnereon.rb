class Libnereon < Formula
  desc "libnereon: Multi-Configuration Parser Library"
  homepage "https://github.com/riboseinc/libnereon"
  url "https://github.com/riboseinc/libnereon/archive/v0.9.1.0.tar.gz"
  sha256 "41a758c13f2831060d8b83b66674f38011a528f5a0b4c1d9275ca78b2a312947"
  head "https://github.com/riboseinc/libnereon.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  devel do
    version '0.9.1.0'
  end

  def install
    system "mkdir build; cd build; cmake ..; make -j1"
    system 'make', 'install'
  end

  test do
    system 'make test'
  end
end
