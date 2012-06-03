################################################################################
require('test/unit')
require('rubygems')
require('mocha')

################################################################################
class TestLooping < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('looping.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_looping
    expects(:puts).times(13)
    eval(File.read(SCRIPT))
  end
end
