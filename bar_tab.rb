class BarTab

  attr_accessor :bar_till

  def initialize(bar_till)
    @bar_till = bar_till
  end

  #Only adds one room charge to the bar till
  def add_room_charge_to_bar_tab(amount)
    @bar_till += amount.room_charge
  end

  #Attempt at adding multiple guest charges to the bar_till
  # def add_room_charge_for_group(amount)
  #   @bar_till += amount.room_charge
  # end

end
