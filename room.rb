class Room

  attr_reader :room_name, :room_capacity, :room_charge, :room_guest_count, :room_till

  def initialize (room_name, room_capacity, room_charge)
    @room_name = room_name
    @room_capacity = room_capacity
    @room_charge = room_charge
    @room_guest_count = []
    @room_till = room_till
  end

  def guest_count
    return @room_guest_count.count
  end

# =>  add a guest to the room if room has space
  def add_guest_to_room(guest)
  # => check the number of guests in the room, if less than capacity then guest can be added
    room_count = @room_guest_count.count
# =>  if room count is less than capacity then guest can be added
    if room_count < room_capacity
      p "#{@room_name} Room guest count is #{room_count}, room capacity is #{room_capacity}"
      p "#{guest.name} has been added to #{@room_name} room!"
      @room_guest_count.push(guest)
      p "#{@room_name} Room guest count is now #{@room_guest_count.count}"
      return
# =>  if room count is equal to room capacity, guest cant enter room
    elsif room_count = room_capacity
      p "Sorry, room #{@room_name} is full, please try another room"
      return @room_guest_count
    end
  end

  def check_song_on_playlist(playlist,guest)
    for song in playlist
      if song.track_name == guest.favourite_song
        p "#{guest.name} favourite song is on the playlist, here are the lyrics"
        p "#{song.lyrics}"
        # return true
      end
    end
    return true
  end


end
