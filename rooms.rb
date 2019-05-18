require('pry')

class Rooms

  attr_accessor :room_name, :songs, :max_guests,:room_charge, :room_till

  def initialize(room_name, songs, max_guests, room_charge, room_till)
    @room_name = room_name
    @songs = songs
    @guests_in_room = []
    @max_guests = max_guests
    @room_charge = room_charge
    @room_till = room_till
  end

  def guest_count
    @guests_in_room.count
  end

  def add_guests_to_room(guest)
    @guests_in_room.push(guest)
  end

  def remove_guest_from_room(guest)
    @guests_in_room.delete(guest)
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def max_guest_not_exceeded
    if @guests_in_room.count <= max_guests
      return "Welcome to CodeClan Caraoke!"
    else
      return "Sorry, the room is full"
    end
  end

  # Used prior to Advanced Extensions
  # def add_room_charge_to_till(guest)
  #     @room_till += @room_charge
  # end

  def find_favourite_song(favourite_song)
    for song in @songs
      if song == favourite_song
        return "Whoo!"
      end
      return "Sorry, we don't have that song"
    end
  end

end
