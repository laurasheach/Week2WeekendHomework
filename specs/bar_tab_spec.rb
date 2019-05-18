require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_tab.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')
require_relative('../drink.rb')

class TestBarTab < MiniTest::Test

  def setup

    @drink1 = Drink.new("beer", 5)
    @drink2 = Drink.new("wine", 10)
    @drink3 = Drink.new("whisky", 15)

    @bar_tab = BarTab.new(0, [@drink1, @drink2, @drink3])

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

  def test_bar_stock
    assert_equal(@drink2, @bar_tab.bar_stock[1])
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

  def test_add_drink_to_tab
    assert_equal(15, @bar_tab.add_drink_to_tab(@drink3))
  end

  def test_add_guests_and_drink_to_room
    assert_equal(10, @bar_tab.add_room_charge_to_bar_tab(@room1))
    assert_equal(25, @bar_tab.add_drink_to_tab(@drink3))
  end

end
