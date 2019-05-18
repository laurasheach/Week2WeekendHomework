require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../rooms.rb')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Sara", 25)
    @guest2 = Guest.new("Ken", 75)
    @guest3 = Guest.new("Zoe", 100)
    @guest4 = Guest.new("Steve", 50)
    @guest5 = Guest.new("Jo", 5)

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

end
