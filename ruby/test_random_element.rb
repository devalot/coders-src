################################################################################
require('test/unit')

################################################################################
class TestRandomElement < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('random_element.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_random_worked
    possibles = ["Peter", "Paul", "Mary", "Bob"]
    name = nil
    eval(File.read(SCRIPT))
    assert(possibles.include?(name))
  end
end
