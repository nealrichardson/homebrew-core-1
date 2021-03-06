class TwoLame < Formula
  desc "Optimized MPEG Audio Layer 2 (MP2) encoder"
  # Homepage down since at least December 2015
  # homepage "http://www.twolame.org/"
  homepage "https://sourceforge.net/projects/twolame/"
  url "https://downloads.sourceforge.net/twolame/twolame-0.3.13.tar.gz"
  sha256 "98f332f48951f47f23f70fd0379463aff7d7fb26f07e1e24e42ddef22cc6112a"

  bottle do
    cellar :any
    sha256 "e93246816c3f6b18a43053c9009364975e718cbe8dc823138b9300b1d080a905" => :mojave
    sha256 "0bad839179bba19b437592c323dc39efcf8ef33ad1f69b9c3acddef7b8b743f6" => :high_sierra
    sha256 "aaa23ea68a8e9ce852c99bc4edbaa4eb008f596d64c1b694a4dd8ed53888d4ad" => :sierra
    sha256 "f42b6a20cbe1d020ed818145180be176361ceda2c203a09bddc0bc1f4c903530" => :el_capitan
    sha256 "7d5a39e1189f77321a2603b77984c57970f897a69aee9bccc008e84a807dbf59" => :yosemite
    sha256 "b03ee3602cad74094fc1141c3fd9aac92f2e298bf0f98a3281a6ba3f547511cd" => :mavericks
  end

  option "with-libsndfile", "Build the twolame frontend"

  deprecated_option "frontend" => "with-libsndfile"

  depends_on "libsndfile" => :optional

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
