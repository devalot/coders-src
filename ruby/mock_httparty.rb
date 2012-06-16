require('test/unit')
require('mocha')
require('httparty')

class MockExampleTest < Test::Unit::TestCase
  def test_example_mocking

    file_name = File.expand_path('../json/gaga.json', File.dirname(__FILE__))
    response = stub('response', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)


    # Don't put this next line in your test, it's only so this
    # specific example will work properly.
    assert_equal(response, HTTParty.get('http://example.com'))
  end
end
