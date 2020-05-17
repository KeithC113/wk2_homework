class Room

  attr_reader :name, :capcity, :guest_count, :room_till

  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @playlist = []
    @guest_count = guest_count
    @room_till = room_till
  end



end
