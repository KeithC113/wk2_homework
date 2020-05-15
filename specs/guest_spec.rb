require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Mick", 100, "Start me up", "Beer")
    @guest2 = Guest.new("Keith", 200, "Ghost Town", "Gin")
    @guest3 = Guest.new("Ronnie", 250, "Brown Sugar", "Red Wine")
    @guest4 = Guest.new("Charlie", 150, "Can't get no Satisfaction","White Wine")

  end

# => 1
  def test_guest_name
    assert_equal("Mick",@guest1.name)
  end
# => 2
  def test_guest_wallet
    assert_equal(200,@guest2.wallet)
  end

# => 3
  def test_guest_favourite_song
    assert_equal("Brown Sugar", @guest3.favourite_song)
  end

# => 4
  def test_guest_favourite_drink
    assert_equal("White Wine", @guest4.favourite_drink)
  end

end
