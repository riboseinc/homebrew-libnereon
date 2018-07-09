class Libnereon < Formula
  desc "libnereon: Multi-Configuration Parser Library"
  homepage "https://github.com/riboseinc/libnereon"
  url "https://github.com/riboseinc/libnereon/archive/v0.9.2.tar.gz"
  sha256 "31969ea5085471e0b62aa7cc3e85d8e29316211052d8fea1d9af4e454fd137d4"
  head "https://github.com/riboseinc/libnereon.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  devel do
    version '0.9.2'
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
