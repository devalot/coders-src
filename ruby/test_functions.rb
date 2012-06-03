################################################################################
require('test/unit')

################################################################################
class TestFunctions < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('functions.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_some_years
    require(SCRIPT)
    assert(leap_year?(2012))
    assert(!leap_year?(1999))
  end
end
