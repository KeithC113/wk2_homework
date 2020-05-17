require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

# =>  setup Room spec
  def setup ()
    @room1 = Room.new("Indie Rock", 15, 20)
    @room2 = Room.new("Pop", 0, 15)
    @venue = [@room1, @room2]
    @song1 = Song.new("Can't get no Satisfaction", "Rolling Stones", "Line 1, line 2, Line3")
    @song2 = Song.new("We are the Champions", "Queen", "Line 11, line 12, Line13")
    @song3 = Song.new("Black Magic", "Little Mix", "Line 21, line 22, Line23")
    @song4 = Song.new("Angels", "Robbie Williams", "Line 31, line 32, Line33")
    @playlist = [@song1, @song2,@song3,@song4]
    @guest1 = Guest.new("Mick", 100, "Start me up", "Beer")
    @guest2 = Guest.new("Keith", 200, "Ghost Town", "Gin")
    @guest3 = Guest.new("Ronnie", 250, "Brown Sugar", "Red Wine")
    @guest4 = Guest.new("Charlie", 150, "Can't get no Satisfaction","White wine")
    @guest_count = 13
    @room_till = 100
  end

# => 1 Test to see what room1 capacity is
  def test_room_capacity
    assert_equal(15, @room1.room_capacity)
  end

# => 2 Test to see what room name is
  def test_room_name
    assert_equal("Pop", @room2.room_name)
  end

# => 3 Test to return number of guests in room
  def test_room_guest_count
    assert_equal(0,@room2.guest_count)
  end

# => 4 Test adding a guest to a room
  def test_try_add_guest_to_room
      @room1.add_guest_to_room(@guest1)
      assert_equal(1,@room1.guest_count)
  end
# # => 5 test if room is full then try another room
  # def test_first_room_is_full_try_another_room
  #   @room2.add_guest_to_room(@guest2)
  #    assert_equal(15,room_count)
  # end

  #   def test_if_all_rooms_full_leave_venue
  #
  #   end

# =>  add test to increase room till and deduct from wallet
#
#   def test
#
# # # => 5 Test if guest's favourite song is on the playlist
  def test_guest_song_on_playlist
    assert_equal(true, @room1.check_song_on_playlist(@playlist,@guest2))
  end

end
