################################################################################
require('test/unit')
require(File.expand_path('rock_paper_scissors.rb', File.dirname(__FILE__)))

################################################################################
class TestRockPaperScissors < Test::Unit::TestCase

  ##############################################################################
  def test_rps
    rps = RockPaperScissors.new

    assert_equal("rock",     rps.play("rock", "scissors"))
    assert_equal("paper",    rps.play("paper", "rock"))
    assert_equal("scissors", rps.play("scissors", "paper"))
    assert_equal("paper",    rps.play("rock", "paper"))

    assert_equal("tie", rps.play("rock", "rock"))
    assert_equal("tie", rps.play("paper", "paper"))
    assert_equal("tie", rps.play("scissors", "scissors"))
  end
end
