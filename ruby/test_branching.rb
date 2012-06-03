#!/usr/bin/env ruby

################################################################################
require('test/unit')
require('rubygems')
require('mocha')

################################################################################
class TestBranching < Test::Unit::TestCase

  ##############################################################################
  SCRIPT = File.expand_path('branching.rb', File.dirname(__FILE__))

  ##############################################################################
  def test_name_is_john
    expects(:puts).with("Hello John!")
    name = "John Doe"
    eval(File.read(SCRIPT))
  end

  ##############################################################################
  def test_name_is_not_john
    expects(:puts).with("Who are you?")
    name = "Frank"
    eval(File.read(SCRIPT))
  end
end
