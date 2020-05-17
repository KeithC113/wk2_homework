require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song")
require_relative("../room")
require_relative("../guest")

class SongTest < MiniTest::Test

# =>  setup Song spec

  def setup()
    @song1 = Song.new("Track1_Name", "Track1_Artist", 1, "Line 1, line 2, Line3")
    @song2 = Song.new("Track2_Name", "Track2_Artist", 1, "Line 11, line 12, Line13")
    @song3 = Song.new("Track3_Name", "Track3_Artist", 2, "Line 21, line 22, Line23")
    @song4 = Song.new("Track4_Name", "Track4_Artist", 2, "Line 31, line 32, Line33")
  end

# =>  create series of tests to check validty of set up

# => 1 test that song has a track name

  def test_song_has_track_name
    assert_equal("Track1_Name", @track_name.track_name)
  end

end
