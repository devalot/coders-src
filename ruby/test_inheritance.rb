################################################################################
require('test/unit')
require('mocha')
require(File.expand_path('inheritance.rb', File.dirname(__FILE__)))

################################################################################
class TestInheritance < Test::Unit::TestCase

  ##############################################################################
  def test_should_call_puts
    m = MiniCart.new
    m.respond_to?(:show)
    m.expects(:puts)
    m.show
  end
end
