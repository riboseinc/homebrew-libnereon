class Libnereon < Formula
  desc "libnereon: Multi-Configuration Parser Library"
  homepage "https://github.com/riboseinc/libnereon"
  url "https://github.com/riboseinc/libnereon/archive/v0.9.0.8.tar.gz"
  sha256 "096e3c0923d16f1ba4474e9ade7fe8a914d0ed3e32179d07ea489ee9696db08d"
  head "https://github.com/riboseinc/libnereon.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libucl"

  devel do
    version '0.9.0.8'
  end

  def install
    system './build_macos.sh'
    system 'make', 'install'
  end

  test do
    system './tests/ucl_test'
  end
end
