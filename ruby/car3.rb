# {BEGIN: class}
class Car

  attr_reader(:speed)

  def initialize
    @speed = 0
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
herbie = Car.new
herbie.speed # => 0
herbie.faster
herbie.speed # => 35
# {END}
