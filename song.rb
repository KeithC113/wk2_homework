class Song

  attr_reader :track_name, :artist, :lyrics

  def initialize (track_name, artist, lyrics)
    @track_name = track_name
    @artist = artist
    @lyrics = lyrics
  end

end
