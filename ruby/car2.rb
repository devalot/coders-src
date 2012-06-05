# {BEGIN: class}
class Car

  attr_reader(:speed)

  def initialize
    @speed = 0
  end

  def go
    @speed = 35
  end

end
# {END}

# {BEGIN: usage}
car = Car.new
car.speed # => 0
car.go
car.speed # => 35
# {END}
