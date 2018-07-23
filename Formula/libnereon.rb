class Libnereon < Formula
  desc "libnereon: Multi-Configuration Parser Library"
  homepage "https://github.com/riboseinc/libnereon"
  url "https://github.com/riboseinc/libnereon/archive/v0.9.4.tar.gz"
  sha256 "4c7e318dea14758948e397ef689e31bd22c8e1783a4cbcabe319b175a5092d99"
  head "https://github.com/riboseinc/libnereon.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  devel do
    version '0.9.4'
  end

  def install
    ENV.deparallelize
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system 'make test'
  end
end
