################################################################################
require('test/unit')
require('mocha')
require(File.expand_path('modules.rb', File.dirname(__FILE__)))

################################################################################
class TestModules < Test::Unit::TestCase

  ##############################################################################
  def test_should_call_puts
    f = Favorites.new
    assert(f.respond_to?(:peanut_butter))
    f.expects(:puts)
    f.peanut_butter
  end
end
