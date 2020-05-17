class Song

  attr_reader :track_name, :artist, :playlist_number, :lyrics

  def initialize (track_name, artist, playlist_number, lyrics)
    @track_name = track_name
    @artist = artist
    @playlist_number = playlist_number
    @lyrics = " line A, line B, line C"
  end

end
