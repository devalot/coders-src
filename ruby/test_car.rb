################################################################################
require('test/unit')
require(File.expand_path('car.rb', File.dirname(__FILE__)))

################################################################################
class TestCar < Test::Unit::TestCase

  ##############################################################################
  def test_car_has_methods
    assert(defined?(Car))

    car = Car.new
    assert_respond_to(car, :go)
    assert_respond_to(car, :stop)
    assert_respond_to(car, :turn)
  end
end
