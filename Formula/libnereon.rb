class Libnereon < Formula
  desc "libnereon: Multi-Configuration Parser Library"
  homepage "https://github.com/riboseinc/libnereon"
  url "https://github.com/riboseinc/libnereon/archive/v0.9.1.4.tar.gz"
  sha256 "0cdf4d894b7b7013af5a5a35efb67899d7d6d061160d89c173bf9f9c5b8eb9fd"
  head "https://github.com/riboseinc/libnereon.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  devel do
    version '0.9.1.4'
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
