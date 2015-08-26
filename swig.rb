require 'formula'

class Swig < Formula
  url 'http://downloads.sourceforge.net/project/swig/swig/swig-2.0.4/swig-2.0.4.tar.gz'
  homepage 'http://www.swig.org/'

  depends_on 'pcre'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
