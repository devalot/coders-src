# {BEGIN: class}
class Car

  attr_reader(:speed)

  def initialize (speed)
    @speed = speed
  end

  def faster
    if @speed < 65
      @speed += 35
    else
      explode!
    end
  end

  private

  def explode!
    @speed = 0
  end
end
# {END}

# {BEGIN: usage}
herbie = Car.new(25)
herbie.speed # => 25
herbie.faster
herbie.speed # => 60
# {END}
