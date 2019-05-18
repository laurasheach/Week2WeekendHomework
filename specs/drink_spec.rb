require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 5)
    @drink2 = Drink.new("wine", 10)
    @drink3 = Drink.new("whisky", 15)
  end

  def test_drink_name
    assert_equal("wine", @drink2.drink)
  end

  def test_drink_price
    assert_equal(15, @drink3.price)
  end

end
