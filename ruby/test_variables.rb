#!/usr/bin/env ruby

################################################################################
require('test/unit')

################################################################################
class TestVariables < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('variables.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_variables
    name = age = nil
    eval(File.read(SCRIPT))
    assert_equal("John Doe", name)
    assert_equal(42, age)
  end
end
