class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers

  end

  def drive()
    return "Brum brum"
  end

end
