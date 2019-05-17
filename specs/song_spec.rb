require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Ian Brown", "F.E.A.R")
    @song2 = Song.new("Oasis", "Live Forever")
    @song3 = Song.new("Underworld", "Born Slippy")
    @song4 = Song.new("The Power of Love", "Frankie Goes To Hollywood")
  end

  def test_artist_name
    assert_equal("Oasis", @song2.artist)
  end

  def test_song_title
    assert_equal("Born Slippy", @song3.song_title)
  end





end
