class Room

  attr_reader :name, :capcity

  def initialize (name, capacity)
    @name = name
    @wallet = capacity
    @playlist = []
  end

end
