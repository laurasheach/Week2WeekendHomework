require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../rooms.rb')
require_relative('../song.rb')

class TestGuest < MiniTest::Test

  def setup

    @song1 = Song.new("Ian Brown", "F.E.A.R")
    @song2 = Song.new("Oasis", "Live Forever")
    @song3 = Song.new("Underworld", "Born Slippy")
    @song4 = Song.new("Frankie Goes to Hollywood", "The Power of Love")
    @song5 = Song.new("Coldplay", "Adventure of a Lifetime")

    @guest1 = Guest.new("Sara", 25, @song1)
    @guest2 = Guest.new("Ken", 75, @song2)
    @guest3 = Guest.new("Zoe", 100, @song3)
    @guest4 = Guest.new("Steve", 50, @song4)
    @guest5 = Guest.new("Jo", 5, @song5)

    @room1 = Rooms.new("Room 1", [@song1, @song2, @song3], 4, 10, 100)
    @room2 = Rooms.new("Room 2", [@song1, @song2, @song3], 4, 10, 100)

  end

  def test_guest_name
    assert_equal("Zoe", @guest3.guest_name)
  end

  def test_guest_wallet
    assert_equal(75, @guest2.guest_wallet)
  end

  def test_guest_has_funds__true
    assert_equal(true, @guest1.guest_has_funds(10))
  end

  def test_guest_has_funds__false
    assert_equal(false, @guest5.guest_has_funds(10))
  end

  def test_remove_room_charge_from_wallet
    assert_equal(90, @guest3.remove_room_charge_from_wallet(@room1))
  end

  def test_favourite_song
    assert_equal(@song2, @guest2.favourite_song)
  end

end
