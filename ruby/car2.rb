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
herbie = Car.new
herbie.speed # => 0
herbie.go
herbie.speed # => 35
# {END}
