require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Mick", 100, "Start me up")
    @guest2 = Guest.new("Keith", 200, "Ghost Town")
    @guest3 = Guest.new("Ronnie", 250, "Brown Sugar")
    @guest4 = Guest.new("Charlie", 150, "Can't get no Satisfaction")

  end




end
