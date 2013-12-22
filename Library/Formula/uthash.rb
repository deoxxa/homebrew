require 'formula'

class Uthash < Formula
  homepage ''
  url 'https://github.com/troydhanson/uthash/archive/v1.9.8.tar.gz'
  version '1.9.8'
  sha1 '4f231c527da9495a8c7ccd12e8b1686531cdf34a'

  def install
    include.install "src/utarray.h", "src/uthash.h", "src/utlist.h", "src/utstring.h"
  end

  test do
    system "make", "-C", "tests"
  end
end
