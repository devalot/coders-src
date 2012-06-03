#!/usr/bin/env ruby

################################################################################
require('test/unit')

################################################################################
class TestHelloWorld < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('helloworld.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_for_correct_output
    should_be = "Hello World!\n"
    should_be += "1 + 2 = 3\n"
    assert_equal(should_be, `ruby #{SCRIPT}`)
  end
end
