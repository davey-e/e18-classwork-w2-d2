class Bus

  attr_reader :route_number

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers

  end

  def drive()
    return "Brum brum"
  end
  def has_passengers?()
    return @passengers
  end
end
