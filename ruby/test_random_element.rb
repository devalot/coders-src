################################################################################
require('test/unit')
require(File.expand_path('random_element.rb', File.dirname(__FILE__)))

################################################################################
class TestRandomElement < Test::Unit::TestCase

  ##############################################################################
  NAMES = ["Peter", "Paul", "Mary", "Bob"]

  ##############################################################################
  def test_random_long
    assert(NAMES.include?(random_long))
  end

  ##############################################################################
  def test_random_short
    assert(NAMES.include?(random_short))
  end
end
