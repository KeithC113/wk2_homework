class Guest

  attr_reader :name, :wallet, :favourite_song, :favourite_drink

  def initialize (name, wallet, favourite_song, favourite_drink)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @favourite_drink = favourite_drink
  end

end
