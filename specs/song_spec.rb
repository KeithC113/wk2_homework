require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song")
require_relative("../room")
require_relative("../guest")

class SongTest < MiniTest::Test

# =>  setup Song spec

  def setup()
    @song1 = Song.new("Can't get no Satisfaction", "Rolling Stones", "Line 1, line 2, Line3")
    @song2 = Song.new("We are the Champions", "Queen", "Line 11, line 12, Line13")
    @song3 = Song.new("Black Magic", "Little Mix", "Line 21, line 22, Line23")
    @song4 = Song.new("Angels", "Robbie Williams", "Line 31, line 32, Line33")
  end

# =>  create series of tests to check validty of set up

# => 1 test that song has a track name
  def test_song_has_track_name
    assert_equal("Can't get no Satisfaction", @song1.track_name)
  end
# =>  2 Test that song has Artist
  def test_song_has_artist
    assert_equal("Queen", @song2.artist)
  end

# => 3 Test to check the track has lyrics
  def test_track_has_lyrics
      assert_equal("Line 31, line 32, Line33", @song4.lyrics)
  end
end
