################################################################################
require('test/unit')
require(File.expand_path('fortune.rb', File.dirname(__FILE__)))

################################################################################
class TestFortune < Test::Unit::TestCase

  ##############################################################################
  def test_fortune
    f = Fortune.new.fortune
    assert(Fortune::FORTUNES.include?(f))
  end
end
