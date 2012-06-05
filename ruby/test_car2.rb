################################################################################
require('test/unit')
require(File.expand_path('car2.rb', File.dirname(__FILE__)))

################################################################################
class TestCar2 < Test::Unit::TestCase

  ##############################################################################
  def test_car_methods_work
    car = Car.new
    assert_equal(0, car.speed)

    car.go
    assert_equal(35, car.speed)
  end
end
