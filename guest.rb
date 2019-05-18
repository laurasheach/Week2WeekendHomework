class Guest

  attr_accessor :guest_name, :guest_wallet, :favourite_song

  def initialize(guest_name, guest_wallet, favourite_song)
    @guest_name = guest_name
    @guest_wallet = guest_wallet
    @favourite_song = favourite_song
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
