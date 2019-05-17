require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRooms < MiniTest::Test

  def setup

    @guest1 = Guest.new("Sara")
    @guest2 = Guest.new("Ken")
    @guest3 = Guest.new("Zoe")
    @guest4 = Guest.new("Steve")
    @guest5 = Guest.new("Jo")

    @song1 = Song.new("Ian Brown", "F.E.A.R")
    @song2 = Song.new("Oasis", "Live Forever")
    @song3 = Song.new("Underworld", "Born Slippy")
    @song4 = Song.new("The Power of Love", "Frankie Goes To Hollywood")

    @room1 = Rooms.new("Room 1", [@song1, @song2, @song3], 4, 10, 100)
    @room2 = Rooms.new("Room 2", [@song1, @song2, @song3], 4, 10, 100)

  end

  def test_room_name
    assert_equal("Room 1", @room1.room_name)
  end

  def test_room_has_no_guests
    assert_equal(0, @room1.guest_count)
  end

  def test_songs_in_room
    assert_equal([@song1, @song2, @song3], @room2.songs)
  end

  def test_max_guests
    assert_equal(4, @room2.max_guests)
  end

  def test_opening_till_balance
    assert_equal(100, @room1.room_till)
  end

  def test_add_guests_to_room
    @room1.add_guests_to_room(@guest3)
    @room1.add_guests_to_room(@guest4)
    assert_equal(2, @room1.guest_count)
  end

  def test_remove_guest_from_room
    @room2.add_guests_to_room(@guest1)
    @room2.add_guests_to_room(@guest2)
    @room2.add_guests_to_room(@guest3)
    @room2.add_guests_to_room(@guest4)
    @room2.add_guests_to_room(@guest5)
    @room2.remove_guest_from_room(@guest4)
    assert_equal(4, @room2.guest_count)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song4)
    assert_equal(4, @room1.songs.count)
  end

  def test_max_guest_not_exceeded__pass
    @room2.add_guests_to_room(@guest1)
    @room2.add_guests_to_room(@guest2)
    @room2.add_guests_to_room(@guest3)
    assert_equal("Welcome to CodeClan Caraoke!", @room2.max_guest_not_exceeded)
  end

  def test_max_guest_not_exceeded__fail
    @room2.add_guests_to_room(@guest1)
    @room2.add_guests_to_room(@guest2)
    @room2.add_guests_to_room(@guest3)
    @room2.add_guests_to_room(@guest4)
    @room2.add_guests_to_room(@guest5)
    assert_equal("Sorry, the room is full", @room2.max_guest_not_exceeded)
  end

  def test_add_room_charge_to_till
    
  end

end
