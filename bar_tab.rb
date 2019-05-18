class BarTab

  attr_accessor :bar_till, :bar_stock

  def initialize(bar_till, bar_stock)
    @bar_till = bar_till
    @bar_stock = bar_stock
  end

  #Only adds one room charge to the bar till
  def add_room_charge_to_bar_tab(amount)
    @bar_till += amount.room_charge
  end

  #Attempt at adding multiple guest charges to the bar_till
  # def add_room_charge_for_group(amount)
  #   @bar_till += amount.room_charge
  # end

  def add_drink_to_tab(amount)
    @bar_till += amount.price
  end

  def add_guests_and_drink_to_room(guest, drink)
    @bar_till += guest.add_room_charge_to_bar_tab += drink.add_drink_to_tab
  end

end
