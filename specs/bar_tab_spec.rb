require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_tab.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')

class TestBarTab < MiniTest::Test

  def setup

    @bar_tab = BarTab.new(0)

    @guest1 = Guest.new("Sara", 25, @song1)
    @guest2 = Guest.new("Ken", 75, @song2)
    @guest3 = Guest.new("Zoe", 100, @song3)
    @guest4 = Guest.new("Steve", 50, @song4)
    @guest5 = Guest.new("Jo", 5, @song5)

    @room1 = Rooms.new("Room 1", [@song1, @song2, @song3], 4, 10, 100)
    @room2 = Rooms.new("Room 2", [@song1, @song2, @song3], 4, 10, 100)

  end

  def test_bar_till_balance
    assert_equal(0, @bar_tab.bar_till)
  end

  #Only adds one room charge to the bar till
  def test_add_room_charge_to_bar_tab
    assert_equal(10, @bar_tab.add_room_charge_to_bar_tab(@room1))
  end

#Attempt at adding multiple guest charges to the bar_till
  # def test_add_room_charge_for_group
  #   @room1.add_guests_to_room(@guest3)
  #   @room1.add_guests_to_room(@guest4)
  #   assert_equal(20, @bar_tab.add_room_charge_for_group(@room1.guest_count))
  # end

end
