require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

# =>  setup Room spec

  def setup()
    @room1 = Room.new("Indie Rock", 15)
    @song1 = Song.new("Track1_Name", "Track1_Artist", 1, "Line 1, line 2, Line3")
    @song2 = Song.new("Track2_Name", "Track2_Artist", 1, "Line 11, line 12, Line13")


    @playlist = [{@song1, @song2}, {@song3, @song4}]
    @guest1 = Guest.new("Mick", 100, "Start me up", "Beer")
    @guest2 = Guest.new("Keith", 200, "Ghost Town", "Gin")
    @guest3 = Guest.new("Ronnie", 250, "Brown Sugar", "Red Wine")
    @guest4 = Guest.new("Charlie", 150, "Can't get no Satisfaction","White
    @guest_count = 13
    @room_till = 100

  end
end
