require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Sara")
    @guest2 = Guest.new("Ken")
    @guest3 = Guest.new("Zoe")
    @guest4 = Guest.new("Steve")
    @guest5 = Guest.new("Jo")

  end

  def test_guest_name
    assert_equal("Zoe", @guest3.guest_name)
  end


end
 
