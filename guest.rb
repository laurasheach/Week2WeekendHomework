class Guest

  attr_accessor :guest_name, :guest_wallet

  def initialize(guest_name, guest_wallet)
    @guest_name = guest_name
    @guest_wallet = guest_wallet
  end

  def guest_has_funds(amount)
    if amount <= @guest_wallet
      return true
    else
      return false
    end
  end

  def remove_room_charge_from_wallet(amount)
    @guest_wallet -= amount.room_charge
  end

end
